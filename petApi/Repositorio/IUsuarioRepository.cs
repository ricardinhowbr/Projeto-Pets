using System.Collections.Generic;
using petApi.DTO;

namespace petApi.Repository
{
    public interface IUsuarioRepository
    {
        void AddUsuario(Usuario usu);

        IEnumerable<Usuario> Getall();

        Usuario Obter(int id);

        void Remove(int id);

        void Update(Usuario usu);

        Usuario Autenticar(string usuario, string senha);
    }
}