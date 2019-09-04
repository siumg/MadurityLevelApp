using System.Collections.Generic;

namespace NivelDeMadurez.Web.Models.Documento
{
    public class DocumentoViewModel
    {
        public int idDocumento { get; set; }
        public string documento { get; set; }
        public string descripcion { get; set; }
        public ICollection<string> capitulos { get; set; }
    }
}
