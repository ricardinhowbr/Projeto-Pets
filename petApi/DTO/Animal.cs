using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace petApi.DTO
{
    [Serializable()]
    [Table("Animal")]
    public class Animal
    {
        public int cod_pet { get; set; }
        public string nome_pet { get; set; }
        public float peso_kg { get; set; }
        public string tipo { get; set; }
        public int cod_usuario { get; set; }
    }
}