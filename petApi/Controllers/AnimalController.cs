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
    [Route("pet/api/[Controller]")]
    [Authorize()]
    public class AnimalController : Controller
    {
        private readonly IAnimalRepository aniRepository;

        public AnimalController(IAnimalRepository repo)
        {
            //Injetar o serviço do repositório...
            this.aniRepository = repo;
        }

        [Route("listar")]
        [HttpGet]
        public IEnumerable<Animal> GetAll()
        {
            return this.aniRepository.Getall();
        }

        [Route("Obter/{id?}")]
        [HttpGet]
        public IActionResult Obter(int id) 
        {
            var animal = this.aniRepository.Obter(id);

            if(animal == null)
                return NotFound();
            
            return new ObjectResult(animal);
        }

        [Route("Add")]
        [HttpPost]
        public IActionResult Criar([FromBody] Animal animal)
        {
            if(animal == null)
                return BadRequest();

            this.aniRepository.Add(animal);

            return new NoContentResult(); 
            //return CreatedAtRoute("ObterUsuario", new { Id = usu.cod_usuario}, usu);
        }

        [HttpPut("Atualizar/{id?}")]
        public IActionResult Atualizar(int id, [FromBody] Animal animal)
        {
            if(animal == null || animal.cod_pet != id)
                return BadRequest();

            var pet = this.aniRepository.Obter(id);

            if(pet == null)
                return NotFound();

            //Alterando apenas duas propriedades para testar
            pet.tipo = animal.tipo;
            pet.peso_kg = animal.peso_kg;
            pet.nome_pet = animal.nome_pet;

            this.aniRepository.Update(pet);

            return new NoContentResult(); //Status code 204
        }


        [HttpDelete("Deletar/{id?}")]
        public IActionResult Deletar(int id)
        {
            var usuario = this.aniRepository.Obter(id);

            if(usuario == null)
                return NotFound();

            this.aniRepository.Remove(id);

            return new NoContentResult(); //Status code 204
        }
    }
}