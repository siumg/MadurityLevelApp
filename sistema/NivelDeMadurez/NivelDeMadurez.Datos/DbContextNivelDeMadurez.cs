using Microsoft.EntityFrameworkCore;
using NivelDeMadurez.Datos.Mapping;
using NivelDeMadurez.Entidades;

namespace NivelDeMadurez.Datos
{
    public class DbContextNivelDeMadurez : DbContext
    {
        public DbSet<Documento> Documentos { get; set; }
        public DbSet<Capitulo> Capitulos { get; set; }
        public DbSet<Articulo> Articulos { get; set; }
        public DbSet<Requerimiento> Requerimientos { get; set; }
        public DbSet<Pregunta> Preguntas { get; set; }
        public DbSet<Inciso> Incisos { get; set; }
        public DbSet<Estado> Estados { get; set; }
        public DbSet<Encuestado> Encuestados { get; set; }
        public DbSet<RespuestaRequerimiento> Respuestas { get; set; }
        public DbSet<RespuestaRequerimientoDetalle> RespuestasDetalle { get; set; }

        public DbContextNivelDeMadurez(DbContextOptions<DbContextNivelDeMadurez> options) : base(options)
        {

        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.ApplyConfiguration(new DocumentoMap());
            modelBuilder.ApplyConfiguration(new CapituloMap());
            modelBuilder.ApplyConfiguration(new ArticuloMap());
            modelBuilder.ApplyConfiguration(new RequerimientoMap());
            modelBuilder.ApplyConfiguration(new PreguntaMap());
            modelBuilder.ApplyConfiguration(new IncisoMap());
            modelBuilder.ApplyConfiguration(new EstadoMap());
            modelBuilder.ApplyConfiguration(new EncuestadoMap());
            modelBuilder.ApplyConfiguration(new RespuestaRequerimientoMap());
            modelBuilder.ApplyConfiguration(new RespuestaRequerimientoDetalleMap());
        }
    }
}
