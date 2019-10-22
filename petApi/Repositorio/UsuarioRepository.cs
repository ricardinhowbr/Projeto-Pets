using System.Linq;
using System.Collections.Generic;

using petApi.DTO;
using petApi.Repository;

namespace petApi.Repository
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

        public Usuario Autenticar(string username, string password)
        {
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
                return null;
 
            var user = this.contexto.Usuarios.SingleOrDefault(x => x.Nome == username && x.Senha==password);
 
            if (user == null)
                return null;
 
            // check if password is correct
            // if (!VerifyPasswordHash(password, user.PasswordHash, user.PasswordSalt))
            //     return null;
 
            // authentication successful
            return user;
        }

        public void Remove(long id)
        {
            var entity = this.contexto.Usuarios.First(u=> u.Id == id);
            this.contexto.Usuarios.Remove(entity);
            this.contexto.SaveChanges();
        }
    }
}