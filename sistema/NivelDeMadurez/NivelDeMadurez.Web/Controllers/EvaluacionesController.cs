using System;
using System.Globalization;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using NivelDeMadurez.Datos;
using NivelDeMadurez.Entidades;
using NivelDeMadurez.Web.Models.Evaluaciones;
using NivelDeMadurez.Web.Models.Capitulo;
using NivelDeMadurez.Web.Models.Articulo;
using NivelDeMadurez.Web.Models.Requerimiento;
using NivelDeMadurez.Web.Models.Respuesta;

namespace NivelDeMadurez.Web.Controllers
{
    [Route("api/evaluaciones")]
    [ApiController]
    public class EvaluacionesController : ControllerBase
    {
        private readonly DbContextNivelDeMadurez _context;

        public EvaluacionesController(DbContextNivelDeMadurez context)
        {
            _context = context;
        }


        // GET: api/evaluaciones/resultados
        [HttpGet("resultados")]
        public async Task<ActionResult<IEnumerable<EvaluacionInfo>>> GetResultados()
        {
            //ActionResult<IEnumerable<EvaluacionInfo>>
            // el parametro 0 indica que se obtendran todas las evaluaciones
            var info = await obtenerDetalleEvaluaciones(0);

            var infoAgrupada = info
                                .GroupBy(consulta => new
                                {
                                    idRespuesta = consulta.idRespuesta,
                                    documento = consulta.documento,
                                    fechaInicio = consulta.fechaInicio,
                                    fechaFinal = consulta.fechaFinal,
                                    entidad = consulta.entidad,
                                    encuestado = consulta.encuestado,
                                    cargo = consulta.cargo,
                                    correo = consulta.correo,
                                    telefono = consulta.telefono
                                });

            var respuestaFinal = new List<EvaluacionInfo>();

            foreach(var grupo in infoAgrupada)
            {
                var respuesta = new EvaluacionInfo
                {
                    idRespuesta = grupo.Key.idRespuesta,
                    documento = grupo.Key.documento,
                    fechaInicio = grupo.Key.fechaInicio,
                    fechaFinal = grupo.Key.fechaFinal,
                    entidad = grupo.Key.entidad,
                    encuestado = grupo.Key.encuestado,
                    cargo = grupo.Key.cargo,
                    correo = grupo.Key.correo,
                    telefono = grupo.Key.telefono
                };
               
                respuestaFinal.Add(respuesta);
            };

            return respuestaFinal;
        }


        // GET: api/evaluaciones/4/comentarios
        [HttpGet("{id}/comentarios")]
        public async Task<ActionResult<IEnumerable<CapituloEvaluadoModel>>> GetComentarios(int id)
        {
            var existeRespuesta = await _context.Respuestas.FindAsync(id);

            if (existeRespuesta == null)
                return NotFound();

            var comentarios = from c in _context.Capitulos
                              join a in _context.Articulos on c.idCapitulo equals a.idCapitulo into articulos
                              where (from subRespuestaDetalle in _context.RespuestasDetalle
                                     where subRespuestaDetalle.idRespuesta == id && subRespuestaDetalle.comentario.Length > 0
                                     select subRespuestaDetalle.requerimiento.articulo.capitulo.idCapitulo).Contains(c.idCapitulo)
                              select new CapituloEvaluadoModel
                              {
                                  noCapitulo = c.noCapitulo,
                                  capitulo = c.capitulo,
                                  articulos = from articulo in articulos
                                              join r in _context.Requerimientos 
                                                on articulo.idArticulo equals r.idArticulo into requerimientos
                                              where (from subRespuestaDetalle in _context.RespuestasDetalle
                                                     where subRespuestaDetalle.idRespuesta == id && subRespuestaDetalle.comentario.Length > 0
                                                     select subRespuestaDetalle.requerimiento.articulo.idArticulo).Contains(articulo.idArticulo)
                                              select new ArticuloEvaluadoModel
                                              {
                                                  noArticulo = articulo.noArticulo,
                                                  articulo = articulo.articulo,
                                                  requerimientos = from requerimiento in requerimientos
                                                                   join respuestaDetalle in _context.RespuestasDetalle 
                                                                    on requerimiento.idRequerimiento equals respuestaDetalle.idRequerimiento
                                                                   where (from subRespuestaDetalle in _context.RespuestasDetalle
                                                                          where subRespuestaDetalle.idRespuesta == id && subRespuestaDetalle.comentario.Length > 0
                                                                          select subRespuestaDetalle.requerimiento.idRequerimiento).Contains(requerimiento.idRequerimiento)
                                                                          && respuestaDetalle.comentario.Length > 0
                                                                   select new RequerimientoEvaluadoModel
                                                                   {
                                                                       noInciso = requerimiento.noInciso,
                                                                       inciso = requerimiento.inciso,
                                                                       respuesta = new RespuestaModel
                                                                       {
                                                                           estado = respuestaDetalle.estado.estado,
                                                                           comentario = respuestaDetalle.comentario
                                                                       }
                                                                   }
                                              }
                              };
                              

            return comentarios.ToList();
        }


        // GET: api/evaluaciones/4/resultado
        [HttpGet("{id}/resultado")]
        public async Task<ActionResult<EvaluacionInfo>> GetResultado(int id)
        {
            var existeRespuesta = await _context.Respuestas.FindAsync(id);

            if (existeRespuesta == null)
                return NotFound();

            var info = await obtenerDetalleEvaluaciones(id);

            var infoAgrupada = info
                                .GroupBy(consulta => new 
                                {
                                    idRespuesta = consulta.idRespuesta,
                                    documento = consulta.documento,
                                    fechaInicio = consulta.fechaInicio,
                                    fechaFinal = consulta.fechaFinal,
                                    entidad = consulta.entidad,
                                    encuestado = consulta.encuestado,
                                    cargo = consulta.cargo,
                                    correo = consulta.correo,
                                    telefono = consulta.telefono
                                }).FirstOrDefault();

            var respuestaFinal = new EvaluacionInfo
            {
                idRespuesta = infoAgrupada.Key.idRespuesta,
                documento = infoAgrupada.Key.documento,
                fechaInicio = infoAgrupada.Key.fechaInicio,
                fechaFinal = infoAgrupada.Key.fechaFinal,
                entidad = infoAgrupada.Key.entidad,
                encuestado = infoAgrupada.Key.encuestado,
                cargo = infoAgrupada.Key.cargo,
                correo = infoAgrupada.Key.correo,
                telefono = infoAgrupada.Key.telefono
            };

            return respuestaFinal;
        }


        // GET: api/evaluaciones/4/resultado/series
        [HttpGet("{id}/resultado/series")]
        public async Task<ActionResult<IEnumerable<RespuestaSerie>>> GetResultadoSeries(int id)
        {
            var nRespuestas = _context.RespuestasDetalle
                                        .Select(r => new { idRespuesta = r.idRespuesta })
                                        .Where(respuesta => respuesta.idRespuesta == id)
                                        .Count();

            var estados = await _context.Estados.Include(estado => estado.respuestasDetalle)
                                    .Select(estado => new
                                    {
                                        estado = estado.estado,
                                        conteo = estado.respuestasDetalle
                                                            .Where(respuesta =>
                                                                (respuesta.idRespuesta == id) && (respuesta.idEstado == estado.idEstado))
                                                            .Count()
                                    }).ToListAsync();

            var series = new List<RespuestaSerie>();
            estados.ForEach(estado => series.Add(new RespuestaSerie
            {
                estado = estado.estado,
                porcentaje = (estado.conteo > 0) ? Math.Round(((decimal)estado.conteo / nRespuestas) * 100, 2) : 0
            }));

            return series;
        }


        // GET: api/evaluaciones/respuesta/5
        [HttpGet("respuesta/{id}")]
        public async Task<ActionResult<RespuestaRequerimiento>> GetRespuesta(int id)
        {
            var respuesta = await _context.Respuestas.FindAsync(id);

            if (respuesta == null)
            {
                return NotFound();
            }

            return respuesta;
        }


        // GET: api/evaluaciones/respuestadetalle/5
        [HttpGet("respuestadetalle/{id}")]
        public async Task<ActionResult<RespuestaRequerimientoDetalle>> GetRespuestaDetalle(int id)
        {
            var respuestaDetalle = await _context.RespuestasDetalle.FindAsync(id);

            if (respuestaDetalle == null)
            {
                return NotFound();
            }

            return respuestaDetalle;
        }



        // POST: api/evaluaciones
        [HttpPost]
        public async Task<ActionResult<RespuestaRequerimiento>> PostPrueba(EvaluacionModel modelo)
        {
            RespuestaRequerimiento respuesta = null;

            using (var transaction = _context.Database.BeginTransaction())
            {
                try
                {
                    var encuestado = new Encuestado
                    {
                        nombres = modelo.encuestado.nombres,
                        apellidos = modelo.encuestado.apellidos,
                        cargo = modelo.encuestado.cargo,
                        entidad = modelo.encuestado.entidad,
                        correo = modelo.encuestado.correo,
                        telefono = modelo.encuestado.telefono
                    };

                    _context.Encuestados.Add(encuestado);
                    await _context.SaveChangesAsync();

                    respuesta = new RespuestaRequerimiento
                    {
                        idEncuestado = encuestado.idEncuestado,
                        fechaInicioEvaluacion = modelo.fechaInicioEvaluacion,
                        fechaFinEvaluacion = modelo.fechaFinEvaluacion
                    };

                    _context.Respuestas.Add(respuesta);
                    await _context.SaveChangesAsync();

                    var respuestasDetalle = new List<RespuestaRequerimientoDetalle>();

                    foreach (var item in modelo.respuestas)
                    {
                        var respuestaDetalle = new RespuestaRequerimientoDetalle
                        {
                            idRequerimiento = item.idRequerimiento,
                            idEstado = item.idEstado,
                            comentario = item.comentario,
                            idRespuesta = respuesta.idRespuesta
                        };
                        respuestasDetalle.Add(respuestaDetalle);
                    }

                    _context.RespuestasDetalle.AddRange(respuestasDetalle);
                    await _context.SaveChangesAsync();

                    transaction.Commit
                        ();
                }
                catch
                {
                    BadRequest();
                }

            }

            return CreatedAtAction("GetRespuesta", new { id = respuesta.idRespuesta }, respuesta);
        }


        private async Task<IEnumerable<EvaluacionInfo>> obtenerDetalleEvaluaciones(int id)
        {
            // el formato 'd' con cultura "es-Es" produce la fecha de la forma: dd/mm/yyyy
            string formato = "d";
            CultureInfo cultura = CultureInfo.CreateSpecificCulture("es-ES");

            var det = await _context.RespuestasDetalle
                                            .Where(respuestaDetalle => (id > 0) ? (respuestaDetalle.idRespuesta == id) : (true))
                                            .Include(respuestaDetalle => respuestaDetalle.respuesta)
                                                .ThenInclude(respuesta => respuesta.encuestado)
                                            .Include(respuestaDetalle => respuestaDetalle.requerimiento)
                                                .ThenInclude(requerimiento => requerimiento.articulo)
                                                    .ThenInclude(articulo => articulo.capitulo)
                                                        .ThenInclude(capitulo => capitulo.documento)
                                            .Select(respuestaDet => new EvaluacionInfo
                                            {
                                                idRespuesta = respuestaDet.idRespuesta,
                                                documento = respuestaDet.requerimiento.articulo.capitulo.documento.documento,
                                                fechaInicio = respuestaDet.respuesta.fechaInicioEvaluacion.ToString(formato, cultura),
                                                fechaFinal = respuestaDet.respuesta.fechaFinEvaluacion.ToString(formato, cultura),
                                                entidad = respuestaDet.respuesta.encuestado.entidad,
                                                encuestado = $"{respuestaDet.respuesta.encuestado.nombres} {respuestaDet.respuesta.encuestado.apellidos}",
                                                cargo = respuestaDet.respuesta.encuestado.cargo,
                                                correo = respuestaDet.respuesta.encuestado.correo,
                                                telefono = respuestaDet.respuesta.encuestado.telefono
                                            }).ToListAsync();

            return det;
        }
    }
}