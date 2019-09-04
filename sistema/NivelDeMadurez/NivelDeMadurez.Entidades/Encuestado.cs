using System.ComponentModel.DataAnnotations;

namespace NivelDeMadurez.Entidades
{
    public class Encuestado
    {
        [Key]
        public int idEncuestado { get; set; }

        [Required]
        [StringLength(60, ErrorMessage = "El nombre no debe de tener más de 60 caracteres.")]
        public string nombres { get; set; }

        [Required]
        [StringLength(60, ErrorMessage = "El apellido no debe de tener más de 60 caracteres")]
        public string apellidos { get; set; }

        [StringLength(80, ErrorMessage = "El correo no debe de tener más de 80 caracteres.")]
        public string correo { get; set; }

        [StringLength(8, ErrorMessage = "El número de teléfono/celular no debe de tener más de 8 caracteres.")]
        public string telefono { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "El cargo no debe de tener más de 100 caracteres.")]
        public string cargo { get; set; }

        [Required]
        [StringLength(200, ErrorMessage = "La entidad no debe de tener más de 200 caracteres.")]
        public string entidad { get; set; }
    }
}
