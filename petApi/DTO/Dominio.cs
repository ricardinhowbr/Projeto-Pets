using System;

namespace petApi.DTO
{
    [Serializable()]
    public class Dominio : EntidadeBase
    {
        public Dominio()
        {

        }

        public virtual string Codigo { get; set; }
        public virtual string Campo { get; set; }
        public virtual string Texto { get; set; }
        public virtual bool UsuarioFinal { get; set; }
        public virtual string Abreviatura { get; set; }
        public virtual bool Desabilitado { get; set; }
        public virtual string Cor { get; set; }
        public virtual string CodigoExterno { get; set; }
    }
}