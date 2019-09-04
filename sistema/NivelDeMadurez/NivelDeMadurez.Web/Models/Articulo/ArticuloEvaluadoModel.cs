using System.Collections.Generic;
using NivelDeMadurez.Web.Models.Requerimiento;

namespace NivelDeMadurez.Web.Models.Articulo
{
    public class ArticuloEvaluadoModel
    {
        public int noArticulo { get; set; }
        public string articulo { get; set; }
        public IEnumerable<RequerimientoEvaluadoModel> requerimientos { get; set; }
    }
}
