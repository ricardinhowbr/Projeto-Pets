using System.Linq;
using System.Collections.Generic;

using petApi.DTO;
using petApi.DataEF;

namespace petApi.Repositorio
{
    public class AnimalRepository : IAnimalRepository
    {
        private readonly AnimalDBContext contexto;

        public AnimalRepository(AnimalDBContext ctx)
        {
            this.contexto = ctx;
        }

        public void Add(Animal animal)
        {
            this.contexto.Animal.Add(animal);
            this.contexto.SaveChanges();
        }

        public IEnumerable<Animal> Getall()
        {
            return this.contexto.Animal.ToList();
        }

        public Animal Obter(int id)
        {
            return this.contexto.Animal.FirstOrDefault(ani => ani.cod_pet == id);
        }

        public void Remove(int id)
        {
            var usuario = this.contexto.Animal.FirstOrDefault(ani => ani.cod_pet == id);
            this.contexto.Animal.Remove(usuario);

            this.contexto.SaveChanges();
        }

        public void Update(Animal animal)
        {
            this.contexto.Animal.Update(animal);
            this.contexto.SaveChanges();
        }

        public void Remove(long id)
        {
            var entity = this.contexto.Animal.First(ani => ani.cod_pet == id);
            this.contexto.Animal.Remove(entity);

            this.contexto.SaveChanges();
        }
    }
}