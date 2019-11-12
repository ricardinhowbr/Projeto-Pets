using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace petApi.DTO
{
    [Serializable()]
    [Table("Vacina")]
    public class Vacina
    {
        public Vacina()
        {

        }

        public int id { get; set; }
        public int qtd_aplicacao { get; set; }
        public DateTime data_aplicacao{ get; set; }
        public string nome_vacina { get; set; }

    }
}