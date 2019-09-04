using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace NivelDeMadurez.Entidades
{
    public class Articulo
    {
        [Key]
        public int idArticulo { get; set; }

        [Required]
        public int idCapitulo { get; set; }

        [Required]
        public int noArticulo { get; set; }

        [Required]
        [StringLength(800, ErrorMessage = "El artículo no puede exceder de 800 caracteres.")]
        public string articulo { get; set; }

        [Required]
        [StringLength(2000, ErrorMessage ="La descripción no puede exceder de 2,000 caracteres.")]

        public string descripcion { get; set; }

        public Capitulo capitulo { get; set; }

        public ICollection<Requerimiento> requerimientos { get; set; }
    }
}
