using System;
using System.Linq;
using System.Collections.Generic;

using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Authentication.JwtBearer;

using petApi.DTO;
using petApi.Repository;
using petApi.Repositorio;

namespace petApi.Controllers
{
    public class VacinaController : Controller
    {
        private readonly IVacinaRepository vacinaRepository;

        public VacinaController(IVacinaRepository repo)
        {
            //Injetar o serviço do repositório...
            this.vacinaRepository = repo;
        }

        [Route("listar")]
        [HttpGet]
        public IEnumerable<Vacina> GetAll()
        {
            return this.vacinaRepository.Getall();
        }

        [Route("Obter/{id?}")]
        [HttpGet]
        public IActionResult Obter(int id) 
        {
            var vacina = this.vacinaRepository.Obter(id);

            if(vacina == null)
                return NotFound();
            
            return new ObjectResult(vacina);
        }

        [Route("Add")]
        [HttpPost]
        public IActionResult Criar([FromBody] Vacina vacina)
        {
            if(vacina == null)
                return BadRequest();

            this.vacinaRepository.Add(vacina);

            return new NoContentResult(); 
            //return CreatedAtRoute("ObterUsuario", new { Id = usu.cod_usuario}, usu);
        }

        [HttpPut("Atualizar/{id?}")]
        public IActionResult Atualizar(int id, [FromBody] Vacina vacina)
        {
            if(vacina == null || vacina.id != id)
                return BadRequest();

            var pet = this.vacinaRepository.Obter(id);

            if(pet == null)
                return NotFound();

            //Alterando apenas duas propriedades para testar
            pet.nome_vacina = vacina.nome_vacina;
            pet.data_aplicacao = vacina.data_aplicacao;
            pet.qtd_aplicacao = vacina.qtd_aplicacao;

            this.vacinaRepository.Update(pet);

            return new NoContentResult(); //Status code 204
        }


        [HttpDelete("Deletar/{id?}")]
        public IActionResult Deletar(int id)
        {
            var vacina = this.vacinaRepository.Obter(id);

            if(vacina == null)
                return NotFound();

            this.vacinaRepository.Remove(id);

            return new NoContentResult(); //Status code 204
        }
    }
}