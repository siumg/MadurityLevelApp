using NivelDeMadurez.Web.Models.Respuesta;

namespace NivelDeMadurez.Web.Models.Requerimiento
{
    public class RequerimientoEvaluadoModel
    {
        public string noInciso { get; set; }
        public string inciso { get; set; }
        public RespuestaModel respuesta { get; set; }
    }
}
