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
    [Route("api/estados")]
    [ApiController]
    public class EstadosController : ControllerBase
    {
        private readonly DbContextNivelDeMadurez _context;

        public EstadosController(DbContextNivelDeMadurez context)
        {
            _context = context;
        }

        // GET: api/estados/listar
        [HttpGet("listar")]
        public async Task<ActionResult<IEnumerable<Estado>>> listar()
        {
            return await _context.Estados.OrderBy(e => e.orden).ToListAsync();
        }

        // GET: api/estados
        [HttpGet("listar/etiquetas")]
        public async Task<ActionResult<IEnumerable<string>>> listarEtiquetas()
        {
            var estados = await _context.Estados.OrderBy(e => e.orden).Select(e => e.estado).ToListAsync();

            return estados;
        }

        // GET: api/estados/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Estado>> GetEstado(int id)
        {
            var estado = await _context.Estados.FindAsync(id);

            if (estado == null)
            {
                return NotFound();
            }

            return estado;
        }

        private bool EstadoExists(int id)
        {
            return _context.Estados.Any(e => e.idEstado == id);
        }
    }
}
