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
    [Route("api/encuestados")]
    [ApiController]
    public class EncuestadosController : ControllerBase
    {
        private readonly DbContextNivelDeMadurez _context;

        public EncuestadosController(DbContextNivelDeMadurez context)
        {
            _context = context;
        }

        // GET: api/encuestados
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Encuestado>>> GetEncuestados()
        {
            return await _context.Encuestados.ToListAsync();
        }

        // GET: api/encuestados/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Encuestado>> GetEncuestado(int id)
        {
            var encuestado = await _context.Encuestados.FindAsync(id);

            if (encuestado == null)
            {
                return NotFound();
            }

            return encuestado;
        }

        

        // POST: api/encuestados
        [HttpPost]
        public async Task<ActionResult<Encuestado>> PostEncuestado(Encuestado modelo)
        {
            var encuestado = new Encuestado
            {
                nombres = modelo.nombres,
                apellidos = modelo.apellidos,
                correo = modelo.correo,
                telefono = modelo.telefono,
                cargo = modelo.cargo,
                entidad = modelo.entidad
            };

            _context.Encuestados.Add(encuestado);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch
            {
                return BadRequest();
            }
            
            return CreatedAtAction("GetEncuestado", new { id = encuestado.idEncuestado }, encuestado);
        }


        private bool EncuestadoExists(int id)
        {
            return _context.Encuestados.Any(e => e.idEncuestado == id);
        }
    }
}
