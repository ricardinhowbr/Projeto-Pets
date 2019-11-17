using System;
using System.Collections.Generic;
using System.Linq;
using petApi.DataEF;
using petApi.DTO;

namespace petApi.Repositorio
{
    public class VacinaRepository
    {
        private readonly VacinaDBContext contexto;

        public VacinaRepository(VacinaDBContext ctx)
        {
            this.contexto = ctx;
        }

        public void Add(Vacina vacina)
        {
            this.contexto.Vacina.Add(vacina);
            this.contexto.SaveChanges();
        }

        public IEnumerable<Vacina> Getall()
        {
            return this.contexto.Vacina.ToList();
        }

        public Vacina Obter(int id)
        {
            return this.contexto.Vacina.FirstOrDefault(vac => vac.id == id);
        }

        public Vacina Obter(DateTime data)
        {
            return this.contexto.Vacina.FirstOrDefault(vac => vac.data_aplicacao == data);
        }

        public Vacina Obter(string nome)
        {
            return this.contexto.Vacina.FirstOrDefault(vac => vac.nome_vacina == nome);
        }

        public void Update(Vacina vacina)
        {
            this.contexto.Vacina.Update(vacina);
            this.contexto.SaveChanges();
        }

        public void Remove(long id)
        {
            var entity = this.contexto.Vacina.First(vac => vac.id == id);
            this.contexto.Vacina.Remove(entity);
            this.contexto.SaveChanges();
        }

        public void Remove(string nome)
        {
            var entity = this.contexto.Vacina.First(vac => vac.nome_vacina == nome);
            this.contexto.Vacina.Remove(entity);
            this.contexto.SaveChanges();
        }
    }
}