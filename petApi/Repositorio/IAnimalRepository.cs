using System.Collections.Generic;
using petApi.DTO;

namespace petApi.Repositorio
{
    public interface IAnimalRepository
    {
        void Add(Animal animal);

        IEnumerable<Animal> Getall();
        IEnumerable<Animal> Getall(int usuId);
        IEnumerable<Animal> Getall(string nomeUsu);

        Animal Obter(int id);
        IEnumerable<Animal> Obter(int usuId, string nomePet);

        void Remove(int id);

        void Update(Animal animal);
    }
}