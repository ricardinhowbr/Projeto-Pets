using System.Linq;
using System.Collections.Generic;

using Microsoft.AspNetCore.Mvc;

using petApi.DTO;
using petApi.Repositorio;

namespace petApi.Controllers
{
    public class UsuariosController : Controller
    {
        private readonly IUsuarioRepository repository;

        public UsuariosController(IUsuarioRepository repo)
        {
            //Injetar o serviço do repositório...
            this.repository = repo;
        }


        [HttpGet("id", Name="ObterUsuario")]
        public IEnumerable<Usuario> GetAll()
        {
            return this.repository.Getall();
        }

        [HttpGet]
        public IActionResult ObterUsuario(int id) 
        {
            var usu = this.repository.Obter(id);

            if(usu == null)
                return NotFound();
            
            return new ObjectResult(usu);
        }
    }
}