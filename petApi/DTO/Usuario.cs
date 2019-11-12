using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace petApi.DTO
{
    [Serializable()]
    [Table("Usuario")]
    public class Usuario
    {
        [Key]
        public int cod_usuario { get; set; }
        public string nome_usu { get; set; }
        public string senha { get; set; }
        public string email { get; set; }
        public string login { get; set; }

    }
}