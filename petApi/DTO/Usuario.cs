using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace petApi.DTO
{
    [Serializable()]
    [Table("Usuario")]
    public class Usuario
    {
        public int cod_usuario { get; set; }
        public string nome { get; set; }
        public string senha { get; set; }
        public string email { get; set; }
        public string login { get; set; }
    }
}