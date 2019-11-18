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

        [Route("listar/{idPet?}")]
        [HttpGet]
        public IEnumerable<Vacina> GetAll(int idPet)
        {
            return this.vacinaRepository.Getall(idPet);
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
        public IActionResult Atualizar(int id, [FromBody] Vacina newVacina)
        {
            if(newVacina == null || newVacina.id != id)
                return BadRequest();

            var vacina = this.vacinaRepository.Obter(id);

            if(vacina == null)
                return NotFound();

            //Alterando apenas duas propriedades para testar
            vacina.nome_vacina = newVacina.nome_vacina;
            vacina.qtd_aplicacao = newVacina.qtd_aplicacao;
            vacina.data_aplicacao = newVacina.data_aplicacao;
            vacina.nome_aplicante = newVacina.nome_aplicante;
            vacina.data_prox_aplicacao = newVacina.data_prox_aplicacao;

            this.vacinaRepository.Update(vacina);

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