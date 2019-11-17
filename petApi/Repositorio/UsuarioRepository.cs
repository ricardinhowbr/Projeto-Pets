using System;
using System.Linq;
using System.Collections.Generic;

using petApi.DTO;
using petApi.DataEF;


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
            this.contexto.Usuario.Add(usu);
            this.contexto.SaveChanges();
        }

        public IEnumerable<Usuario> Getall()
        {
            return this.contexto.Usuario.ToList();
        }

        public Usuario Obter(int id)
        {
            return this.contexto.Usuario.FirstOrDefault(usu => usu.cod_usuario == id);
        }

        public void Remove(int id)
        {
            var usuario = this.contexto.Usuario.FirstOrDefault(usu => usu.cod_usuario == id);
            this.contexto.Usuario.Remove(usuario);
            this.contexto.SaveChanges();
        }

        public void Update(Usuario usu)
        {
            this.contexto.Usuario.Update(usu);
            this.contexto.SaveChanges();
        }

        public Usuario Autenticar(string username, string password)
        {
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
                throw new Exception("Parâmetros inválidos!!");
 
            var user = this.contexto.Usuario.SingleOrDefault(x => x.login == username && x.senha==password);
 
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
            var entity = this.contexto.Usuario.First(u=> u.cod_usuario == id);
            this.contexto.Usuario.Remove(entity);
            this.contexto.SaveChanges();
        }
    }
}