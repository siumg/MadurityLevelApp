using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace NivelDeMadurez.Entidades
{
    public class Documento
    {
        [Key]
        public int idDocumento { get; set; }

        [Required]
        [StringLength(100, ErrorMessage ="El nombre del documento no puede exceder de 100 caracteres.")]
        public string documento { get; set; }

        [StringLength(500, ErrorMessage = "La descripción del documento no puede exceder de 500 caracteres.")]
        public string descripcion { get; set; }

        public ICollection<Capitulo> capitulos { get; set; }
    }
}
