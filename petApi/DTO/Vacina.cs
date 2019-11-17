using System;
using System.ComponentModel.DataAnnotations;
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

        [Key] public int id { get; set; }
        public int qtd_aplicacao { get; set; }
        public DateTime data_aplicacao { get; set; }
        public DateTime? data_prox_aplicacao { get; set; }
        public string nome_vacina { get; set; }
        public string nome_aplicante { get; set; }
        public float? peso_pet_kg { get; set; }

        public int cod_pet { get; set; }
        
        [ForeignKey(nameof(Animal))] public Animal Animal { get; set; }

    }
}