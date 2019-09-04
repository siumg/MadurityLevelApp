using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace NivelDeMadurez.Entidades
{
    public class Capitulo
    {
        [Key]
        public int idCapitulo { get; set; }

        [Required]
        public int idDocumento { get; set; }

        [Required]
        public int noCapitulo { get; set; }

        [Required]
        [StringLength(1000, ErrorMessage ="El capitulo no puede exceder de 1,000 caracteres.")]
        public string capitulo { get; set; }
        
        public Documento documento { get; set; }
        public ICollection<Articulo> articulos { get; set; }
    }
}
