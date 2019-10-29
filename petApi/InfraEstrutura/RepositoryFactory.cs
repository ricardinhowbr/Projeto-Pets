using System;
using System.Web;
using System.Linq;
using System.Text;
using System.Data;
using System.Collections;
using System.Data.SqlClient;
using System.Threading.Tasks;
using System.Collections.Generic;

using NHibernate;

using petApi.DTO;
using petApi.Dados;

public interface IRepositoryFactory
{
    DateTime DataAtual();
    ITransaction AbrirTransacao();
    IRepository<T> NewRepository<T>() where T :  EntidadeBase;
    IList Listar(string query, int maxResults = 0, IDictionary<string, object> par = null);
}

public class RepositoryFactory : IRepositoryFactory
{
    private object objLock = new object();
    private static int timeout = 90000;
    private static RepositoryFactory instance;
    private static object instLock = new object();

    private static bool ManagedThreadSession { get; set; }
    private static bool ManagedStaticSession { get; set; }
    private static bool ManagedWebSession { get; set; } = true;

    private RepositoryFactory()
    {

    }

    private ISession ObterSessao()
    {
        lock (this.objLock)
        {
            var httpRequesting = false;

            if (ManagedWebSession && httpRequesting)
            {
                return StaticBroker.SessionFactory.GetCurrentSession();
            }
            else if (ManagedThreadSession)
            {
                if (StaticBroker.ThreadSession == null || !StaticBroker.ThreadSession.IsOpen)
                    StaticBroker.ThreadSession = StaticBroker.SessionFactory.OpenSession();

                return StaticBroker.ThreadSession;
            }
            else if (ManagedStaticSession || httpRequesting)
            {
                if (StaticBroker.CurrentSession == null || !StaticBroker.CurrentSession.IsOpen)
                    StaticBroker.CurrentSession = StaticBroker.SessionFactory.OpenSession();

                return StaticBroker.CurrentSession;
            }
            else
                return StaticBroker.SessionFactory.OpenSession();
        }
    }

    public static RepositoryFactory Instace
    {
        get
        {
            lock(instLock)
            {
                if(StaticBroker.SessionFactory == null)
                    throw new Exception("RepositoryFactory não inicializada, deve-se chamar o método 'Inicializar' antes solicitar uma instância da factory.");

                return instance ?? (instance = new RepositoryFactory());
            }
        }
    }

    public static void Inicializar(string configFile, string connectionString, int timeout = 90000)
    {
        lock(instLock)
        {
            if(StaticBroker.SessionFactory == null)
            {
                RepositoryFactory.timeout = timeout;

                var config = new NHibernate.Cfg.Configuration();

                config.Configure(configFile);
                config.AddAssembly("petApi.Dados");
                config.Properties["connection.connection_string"] = connectionString;

                string sessionContextClass = null;

                if(config.Properties.TryGetValue(NHibernate.Cfg.Environment.CurrentSessionContextClass, out sessionContextClass))
                    ManagedWebSession = (sessionContextClass.ToLower() == "manged_web") || sessionContextClass.ToLower() == "web";
                else
                    ManagedWebSession = false;
            }
        }
    }

    
    #region  IRepositoryFactory

    public DateTime DataAtual()
    {
        throw new NotImplementedException();
    }

    public ITransaction AbrirTransacao()
    {
        throw new NotImplementedException();
    }

    public IRepository<T> NewRepository<T>() where T : EntidadeBase
    {
        return new Repository<T>(() => this.ObterSessao(), timeout);
    }

    public IList Listar(string query, int maxResults = 0, IDictionary<string, object> par = null)
    {
        throw new NotImplementedException();
    }

    #endregion
}