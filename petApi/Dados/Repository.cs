using System;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.Generic;

using NHibernate;
using petApi.DTO;

namespace petApi.Dados
{
    public interface IRepository<T> where T : EntidadeBase
    {
        T Obter(int id);
        T Obter(string hql, IDictionary<string, object> @params = null);
        IList<T> Listar(string hql, int maxResults = 0, IDictionary<string, object> @params = null);

        void Salvar(T entidade);
        void Deletar(T entidade);
        void Atualizar(params T[] entidades);

        int Executar(string hql, IDictionary<string, object> @params = null);
    }

    public class Repository<T> : IRepository<T> where T : EntidadeBase
    {
        private int timeout;
        private Func<ISession> getSession;

        internal Repository(Func<ISession> getSession, int timeout)
        {
            this.timeout = timeout;
            this.getSession = getSession;
        }

        #region IRepository Members

        public T Obter(int id)
        {
            var session = this.getSession();

            return session.Get<T>(id);
        }

        public void Salvar(T entidade)
        {
            var session = getSession();

            session.Save(entidade);
            session.Flush();
        }
        public void Deletar(T entidade)
        {
            var session = getSession();

            session.Delete(entidade);
            session.Flush();
        }
        public void Atualizar(params T[] entidades)
        {
            var session = getSession();

            session.Update(entidades);
            session.Flush();
        }

        public T Obter(string hql, IDictionary<string, object> par = null)
        {
            return this.Listar(hql, 1, par).FirstOrDefault();
        }

        public int Executar(string hql, IDictionary<string, object> par = null)
        {
            var session = getSession();
            var query = session.CreateQuery(hql);

            query.SetTimeout(this.timeout);

            if(par != null)
            {
                foreach(string paramName in query.NamedParameters)
                {
                    if(par.ContainsKey(paramName))
                        query.SetParameter(paramName, par[paramName]);
                }
            }

            return query.ExecuteUpdate();
        }

        public IList<T> Listar(string hql, int maxResults = 0, IDictionary<string, object> par = null)
        {
            var session = this.getSession();
            var query = session.CreateQuery(hql);

            query.SetTimeout(this.timeout);

            if(par != null)
            {
                foreach(string paramName in query.NamedParameters)
                {
                    if(par.ContainsKey(paramName))
                    {
                        query.SetParameter(paramName, par[paramName]);
                    }
                }
            }

            if(maxResults > 0)
                query.SetMaxResults(maxResults);

            return query.List<T>();
        }

        #endregion
    }
}