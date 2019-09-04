using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using NivelDeMadurez.Entidades;

namespace NivelDeMadurez.Datos.Mapping
{
    class RespuestaRequerimientoDetalleMap : IEntityTypeConfiguration<RespuestaRequerimientoDetalle>
    {
        public void Configure(EntityTypeBuilder<RespuestaRequerimientoDetalle> builder)
        {
            builder.ToTable("RespuestasRequerimientosDetalle")
                .HasKey(e => e.idRespuestaDetalle);
        }
    }
}
