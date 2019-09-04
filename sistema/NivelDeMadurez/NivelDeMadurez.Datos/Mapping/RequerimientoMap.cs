using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using NivelDeMadurez.Entidades;

namespace NivelDeMadurez.Datos.Mapping
{
    public class RequerimientoMap : IEntityTypeConfiguration<Requerimiento>
    {
        public void Configure(EntityTypeBuilder<Requerimiento> builder)
        {
            builder.ToTable("Requerimientos")
                .HasKey(r => r.idRequerimiento);
        }
    }
}
