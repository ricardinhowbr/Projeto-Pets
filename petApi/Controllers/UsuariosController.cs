using System.Linq;
using System.Collections.Generic;

using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;

using petApi.DTO;
using petApi.Repository;

namespace petApi.Controllers
{
    [Route("pet/api/[Controller]")]
    [Authorize()]
    public class UsuariosController : Controller
    {
        private readonly IUsuarioRepository usuRepository;

        public UsuariosController(IUsuarioRepository repo)
        {
            //Injetar o serviço do repositório...
            this.usuRepository = repo;
        }


        [HttpGet("{id}", Name="ObterUsuario")]
        public IEnumerable<Usuario> GetAll()
        {
            return this.usuRepository.Getall();
        }

        [HttpGet]
        public IActionResult ObterUsuario(int id) 
        {
            var usu = this.usuRepository.Obter(id);

            if(usu == null)
                return NotFound();
            
            return new ObjectResult(usu);
        }

        [HttpPost]
        public IActionResult Criar([FromBody] Usuario usu)
        {
            if(usu == null)
                return BadRequest();

            this.usuRepository.AddUsuario(usu);

            return CreatedAtRoute("ObterUsuario", new { Id = usu.Id}, usu);
        }

        [HttpPut("{id}")]
        public IActionResult Atualizar(int id, [FromBody] Usuario usu)
        {
            if(usu == null || usu.Id != id)
                return BadRequest();

            var usuario = this.usuRepository.Obter(id);

            if(usuario == null)
                return NotFound();

            //Alterando apenas duas propriedades para testar
            usuario.Nome = usu.Nome;
            usuario.Email = usu.Email;

            this.usuRepository.Update(usuario);

            return new NoContentResult(); //Status code 204
        }

        [HttpDelete]
        public IActionResult Deletar(int id)
        {
            var usuario = this.usuRepository.Obter(id);

            if(usuario == null)
                return NotFound();

            this.usuRepository.Remove(id);

            return new NoContentResult();  //Status code 204
        }

        [AllowAnonymous]
        [HttpPost("autenticar")]
        public IActionResult Autenticar([FromBody] Usuario usuario)
        {
            var usu = this.usuRepository.Autenticar(usuario.Nome, usuario.Senha);
 
            if (usu == null)
                return Unauthorized();
 
            return new ObjectResult(usu);
        }
    }
}