using petApi.DTO;

using FluentNHibernate.Mapping;

namespace petApi.Mapeamento
{
    public class UsuarioMap : ClassMap<petApi.DTO.Usuario>
    {
        public UsuarioMap()
        {
            Id(i => i.Id);
            
            Map(i => i.Nome);
            Map(i => i.Senha);

            Table("Usuario");
        }   
    }
}