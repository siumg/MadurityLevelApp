using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace NivelDeMadurez.Entidades
{
    public class Pregunta
    {
        [Key]
        public int idPregunta { get; set; }

        [Required]
        public int idRequerimiento { get; set; }

        [Required]
        public int orden { get; set; }

        [Required]
        [StringLength(1000, ErrorMessage ="La pregunta no debe exceder de 1,000 caracteres.")]
        public string pregunta { get; set; }

        public Requerimiento requerimiento { get; set; }
        public ICollection<Inciso> incisos { get; set; }
    }
}
