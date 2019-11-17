using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace petApi.DTO
{
    [Serializable()]
    [Table("Animal")]
    public class Animal
    {
        public Animal() { }

        [Key] public int cod_pet { get; set; }
        public string nome_pet { get; set; }
        public float peso_kg { get; set; }
        public string sexo { get; set; }
        public string cor { get; set; }
        public string tipo { get; set; }
        public DateTime data_nascimento {get; set; }

        public int cod_usuario { get; set; }
        
        [ForeignKey(nameof(Usuario))] public Usuario Usuario { get; set; }
    }
}