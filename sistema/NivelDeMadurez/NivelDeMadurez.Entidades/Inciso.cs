using System.ComponentModel.DataAnnotations;

namespace NivelDeMadurez.Entidades
{
    public class Inciso
    {
        [Key]
        public int idInciso { get; set; }

        [Required]
        public int idPregunta { get; set; }

        [Required]
        public int orden { get; set; }

        [Required]
        [StringLength(1000, ErrorMessage ="El inciso no puede exceder 1,000 caracteres.")]
        public string inciso { get; set; }

        public Pregunta pregunta { get; set; }
    }
}
