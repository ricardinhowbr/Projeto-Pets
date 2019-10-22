using System;
using System.Threading.Tasks;
using static System.Console;


namespace apiConsole
{
    public class Program
    {
        public static void Main(string[] args)
        {
            WriteLine("Acessando a API... aguarde um momento!");

            var repo = new UsuarioRepository();

            var usuariosTask = repo.GetUsuariosAsync(); 

            usuariosTask.ContinueWith(task =>
            {
                   var usuarios = task.Result;
                   foreach(var u in usuarios)
                        WriteLine(u.ToString());

                   Environment.Exit(0);  
             },
             TaskContinuationOptions.OnlyOnRanToCompletion
             ); 

             ReadLine();
        }
    }
}
