using System.Collections.Generic;
using petApi.DTO;

namespace petApi.Repositorio
{
    public interface IVacinaRepository
    {
        void Add(Vacina vacina);

        IEnumerable<Vacina> Getall();

        Vacina Obter(int id);

        void Remove(int id);

        void Update(Vacina vacina);
    }
}