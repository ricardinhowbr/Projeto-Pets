using System.Linq;
using System.Collections.Generic;

using petApi.DTO;

namespace petApi.Repositorio
{
    public class UsuarioRepository : IUsuarioRepository
    {
        private readonly UsuarioDBContext contexto;

        public UsuarioRepository(UsuarioDBContext ctx)
        {
            this.contexto = ctx;
        }

        public void AddUsuario(Usuario usu)
        {
            this.contexto.Usuarios.Add(usu);
            this.contexto.SaveChanges();
        }

        public IEnumerable<Usuario> Getall()
        {
            return this.contexto.Usuarios.ToList();
        }

        public Usuario Obter(int id)
        {
            return this.contexto.Usuarios.FirstOrDefault(usu => usu.Id == id);
        }

        public void Remove(int id)
        {
            var usuario = this.contexto.Usuarios.FirstOrDefault(usu => usu.Id == id);
            this.contexto.Usuarios.Remove(usuario);
            this.contexto.SaveChanges();
        }

        public void Update(Usuario usu)
        {
            this.contexto.Usuarios.Update(usu);
            this.contexto.SaveChanges();
        }
    }
}