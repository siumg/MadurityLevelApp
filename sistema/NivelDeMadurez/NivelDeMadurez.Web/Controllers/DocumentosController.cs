using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using NivelDeMadurez.Datos;
using NivelDeMadurez.Entidades;

namespace NivelDeMadurez.Web.Controllers
{
    [Produces("application/json")]
    [Route("api/documentos")]
    [ApiController]
    public class DocumentosController : ControllerBase
    {
        private readonly DbContextNivelDeMadurez _context;

        public DocumentosController(DbContextNivelDeMadurez context)
        {
            _context = context;
        }

        // GET: api/Documentos
        [HttpGet]
        public async Task<ActionResult< IEnumerable<Documento>>> GetDocumentos()
        {
            var doc = await _context.Documentos.Select(document => new
            {
                idDocumento = document.idDocumento,
                descripcion = document.descripcion,
                documento = document.documento,
                capitulos = document.capitulos.Select(cap => new
                {
                    noCapitulo = cap.noCapitulo,
                    capitulo = cap.capitulo
                })
            }).ToListAsync();

            return Ok(doc);
        }

        // GET: api/documentos/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Documento>> obtenerDocumento(int id)
        {
            var documento = await _context.Documentos
                                            .Include(d => d.capitulos)
                                                .ThenInclude(cap => cap.articulos)
                                                .ThenInclude(art => art.requerimientos)
                                            .Select(doc => new
                                            {
                                                idDocumento = doc.idDocumento,
                                                documento = doc.documento,
                                                descripcionDocumento = doc.descripcion,
                                                capitulos = doc.capitulos.Select(cap => new
                                                {
                                                    noCapitulo = cap.noCapitulo,
                                                    capitulo = cap.capitulo,
                                                    articulos = cap.articulos.Select(art => new
                                                    {
                                                        noArticulo = art.noArticulo,
                                                        articulo = art.articulo,
                                                        descripcion = art.descripcion,
                                                        requerimientos = art.requerimientos.Select(req => new
                                                        {
                                                            idRequerimiento = req.idRequerimiento,
                                                            noInciso = req.noInciso,
                                                            inciso = req.inciso,
                                                            estado = new {},
                                                            nota = "",
                                                            preguntas = req.preguntas.Select(p => new
                                                            {
                                                                orden = p.orden,
                                                                pregunta = p.pregunta,
                                                                incisos = p.incisos.Select(i => new
                                                                {
                                                                    orden = i.orden,
                                                                    inciso = i.inciso
                                                                })
                                                            })
                                                        })
                                                    })
                                                })
                                            })
                                            .Where(d => d.idDocumento == id)
                                            .OrderBy(d => d.capitulos.Select(c => c.noCapitulo))
                                            .ThenBy(d => d.capitulos.Select(c => c.articulos.Select(a => a.noArticulo)))
                                            .ToListAsync();

            if (documento == null)
            {
                return NotFound();
            }

            return Ok(documento[0]);
        }


        private bool DocumentoExists(int id)
        {
            return _context.Documentos.Any(e => e.idDocumento == id);
        }
    }
}
