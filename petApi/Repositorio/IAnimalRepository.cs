using System.Collections.Generic;
using petApi.DTO;

namespace petApi.Repositorio
{
    public interface IAnimalRepository
    {
        void Add(Animal animal);

        IEnumerable<Animal> Getall();

        Animal Obter(int id);

        void Remove(int id);

        void Update(Animal animal);
    }
}