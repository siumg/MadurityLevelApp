using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using NivelDeMadurez.Entidades;

namespace NivelDeMadurez.Datos.Mapping
{
    public class PreguntaMap : IEntityTypeConfiguration<Pregunta>
    {
        public void Configure(EntityTypeBuilder<Pregunta> builder)
        {
            builder.ToTable("Preguntas")
                .HasKey(p => p.idPregunta);
        }
    }
}
