using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using NivelDeMadurez.Entidades;

namespace NivelDeMadurez.Datos.Mapping
{
    public class DocumentoMap : IEntityTypeConfiguration<Documento>
    {
        public void Configure(EntityTypeBuilder<Documento> builder)
        {
            builder.ToTable("Documentos")
                .HasKey(d => d.idDocumento);
        }
    }
}
