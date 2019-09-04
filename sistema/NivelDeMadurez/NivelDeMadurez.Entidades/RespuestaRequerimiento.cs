using System.ComponentModel.DataAnnotations;
using System;
using System.Collections.Generic;

namespace NivelDeMadurez.Entidades
{
    public class RespuestaRequerimiento
    {
        [Key]
        public int idRespuesta { get; set; }

        [Required]
        public int idEncuestado { get; set; }

        public DateTime fechaInicioEvaluacion { get; set; }

        public DateTime fechaFinEvaluacion { get; set; }

        public Encuestado encuestado { get; set; }

    }
}
