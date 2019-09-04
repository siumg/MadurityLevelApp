using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using NivelDeMadurez.Entidades;

namespace NivelDeMadurez.Datos.Mapping
{
    public class EncuestadoMap : IEntityTypeConfiguration<Encuestado>
    {
        public void Configure(EntityTypeBuilder<Encuestado> builder)
        {
            builder.ToTable("Encuestados")
                .HasKey(e => e.idEncuestado);
        }
    }
}
