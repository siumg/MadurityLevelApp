using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace NivelDeMadurez.Entidades
{
    public class Estado
    {
        [Key]
        public int idEstado { get; set; }

        [Required]
        [StringLength(30, ErrorMessage = "El estado no debe de tener más de 30 caracteres.")]
        public string estado { get; set; }

        [Required]
        public int orden { get; set; }

        public ICollection<RespuestaRequerimientoDetalle> respuestasDetalle { get; set; }
    }
}
