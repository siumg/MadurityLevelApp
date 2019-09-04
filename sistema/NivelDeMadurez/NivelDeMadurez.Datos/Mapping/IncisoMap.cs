using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using NivelDeMadurez.Entidades;

namespace NivelDeMadurez.Datos.Mapping
{
    public class IncisoMap : IEntityTypeConfiguration<Inciso>
    {
        public void Configure(EntityTypeBuilder<Inciso> builder)
        {
            builder.ToTable("Incisos")
                .HasKey(i => i.idInciso);
        }
    }
}
