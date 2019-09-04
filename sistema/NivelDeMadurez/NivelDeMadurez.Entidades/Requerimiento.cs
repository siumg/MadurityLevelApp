using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace NivelDeMadurez.Entidades
{
    public class Requerimiento
    {
        [Key]
        public int idRequerimiento { get; set; }

        [Required]
        public int idArticulo { get; set; }

        [Required]
        [StringLength(5, ErrorMessage = "El literal de inciso de requerimiento no puede exceder de 5 caracteres.")]
        public string noInciso { get; set; }

        [Required]
        [StringLength(800, ErrorMessage ="El requerimiento no debe exceder de 800 caracteres.")]
        public string inciso { get; set; }

        
        public Articulo articulo { get; set; }
        public ICollection<Pregunta> preguntas { get; set; }
        public ICollection<RespuestaRequerimientoDetalle> respuestasDetalle { get; set; }
    }
}
