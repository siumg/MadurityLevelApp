using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using NivelDeMadurez.Entidades;

namespace NivelDeMadurez.Datos.Mapping
{
    public class RespuestaRequerimientoMap : IEntityTypeConfiguration<RespuestaRequerimiento>
    {
        public void Configure(EntityTypeBuilder<RespuestaRequerimiento> builder)
        {
            builder.ToTable("RespuestasRequerimientos")
                .HasKey(respuesta => respuesta.idRespuesta);
        }
    }
}
