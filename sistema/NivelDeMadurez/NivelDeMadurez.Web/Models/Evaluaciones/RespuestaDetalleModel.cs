using System.ComponentModel.DataAnnotations;

namespace NivelDeMadurez.Web.Models.Evaluaciones
{
    public class RespuestaDetalleModel
    {
        [Required]
        public int idRequerimiento { get; set; }
        [Required]
        public int idEstado { get; set; }
        [StringLength(2000, ErrorMessage = "El comentario de la respuesta no puede exceder de 2,000 caracteres.")]
        public string comentario { get; set; }
    }
}
