using System;
using System.Linq;
using System.Collections.Generic;

using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Authentication.JwtBearer;

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

        [Route("listar")]
        [HttpGet]
        public IEnumerable<Usuario> GetAll()
        {
            return this.usuRepository.Getall();
        }

        [Route("ObterUsuario")]
        [HttpGet]
        public IActionResult ObterUsuario(int id) 
        {
            var usu = this.usuRepository.Obter(id);

            if(usu == null)
                return NotFound();
            
            return new ObjectResult(usu);
        }

        [Route("Add")]
        [HttpPost]
        public IActionResult Criar([FromBody] Usuario usu)
        {
            if(usu == null)
                return BadRequest();

            this.usuRepository.AddUsuario(usu);

            return CreatedAtRoute("ObterUsuario", new { Id = usu.cod_usuario}, usu);
        }

        [HttpPut("Atualizar/{id}")]
        public IActionResult Atualizar(int id, [FromBody] Usuario usu)
        {
            if(usu == null || usu.cod_usuario != id)
                return BadRequest();

            var usuario = this.usuRepository.Obter(id);

            if(usuario == null)
                return NotFound();

            //Alterando apenas duas propriedades para testar
            usuario.nome_usu = usu.nome_usu;
            usuario.email = usu.email;

            this.usuRepository.Update(usuario);

            return new NoContentResult(); //Status code 204
        }


        [HttpDelete("Deletar/{id}")]
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
            try
            {
                var usu = this.usuRepository.Autenticar(usuario.nome_usu, usuario.senha);
    
                if (usu == null)
                    return Unauthorized();
    
                return new ObjectResult(usu);
            }
            catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}