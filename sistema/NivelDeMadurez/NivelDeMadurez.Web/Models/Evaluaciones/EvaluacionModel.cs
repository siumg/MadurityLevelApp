using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using NivelDeMadurez.Web.Models.Encuestados;

namespace NivelDeMadurez.Web.Models.Evaluaciones
{
    public class EvaluacionModel
    {
        [Required]
        public EncuestadoModel encuestado { get; set; }

        public DateTime fechaInicioEvaluacion { get; set; }
        public DateTime fechaFinEvaluacion { get; set; }
        [Required]
        public ICollection<RespuestaDetalleModel> respuestas { get; set; }
    }
}
