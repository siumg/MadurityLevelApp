using System.Collections.Generic;
using NivelDeMadurez.Web.Models.Articulo;

namespace NivelDeMadurez.Web.Models.Capitulo
{
    public class CapituloEvaluadoModel
    {
        public int noCapitulo { get; set; }
        public string capitulo { get; set; }
        public IEnumerable<ArticuloEvaluadoModel> articulos { get; set; }
    }
}
