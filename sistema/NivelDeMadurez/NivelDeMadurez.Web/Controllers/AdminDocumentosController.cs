using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using NivelDeMadurez.Datos;
using NivelDeMadurez.Entidades;

namespace NivelDeMadurez.Web.Controllers
{
    [Produces("application/json")]
    [Route("api/admin/documentos")]
    [ApiController]
    public class AdminDocumentosController : ControllerBase
    {
        private readonly DbContextNivelDeMadurez _context;

        public AdminDocumentosController(DbContextNivelDeMadurez context)
        {
            _context = context;
        }

        // GET: api/admin/documentos
        [HttpGet]
        public async Task<ActionResult<IEnumerable<object>>> GetDocumentos()
        {
            var doc = await _context.Documentos
                                    .Select(documento => new
                                    {
                                        idDocumento = documento.idDocumento,
                                        documento = documento.documento,
                                        descripcion = documento.descripcion,
                                        noCapitulos = documento.capitulos.Count()
                                    })
                                    .ToListAsync();

            return Ok(doc);
        }
    }
}
