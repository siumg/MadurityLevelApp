using System.ComponentModel.DataAnnotations;

namespace NivelDeMadurez.Entidades
{
    public class RespuestaRequerimientoDetalle
    {
        [Key]
        public int idRespuestaDetalle { get; set; }

        [Required]
        public int idRespuesta { get; set; }

        [Required]
        public int idRequerimiento { get; set; }

        [Required]
        public int idEstado { get; set; }

        [StringLength(2000, ErrorMessage = "El comentario de la respuesta no puede exceder de 2,000 caracteres.")]
        public string comentario { get; set; }

        public RespuestaRequerimiento respuesta { get; set; }

        public Requerimiento requerimiento { get; set; }

        public Estado estado { get; set; }
    }
}
