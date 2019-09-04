using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using NivelDeMadurez.Entidades;

namespace NivelDeMadurez.Datos.Mapping
{
    public class CapituloMap : IEntityTypeConfiguration<Capitulo>
    {
        public void Configure(EntityTypeBuilder<Capitulo> builder)
        {
            builder.ToTable("Capitulos")
                .HasKey(c => c.idCapitulo);
        }
    }
}
