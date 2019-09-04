<template>
  <v-container >
    
    <template v-if="!cargaCompleta">
      <v-overlay :value="overlay">
        <v-progress-circular indeterminate size="64"></v-progress-circular>
      </v-overlay>
    </template>

    <template v-else>
      <v-snackbar
        v-model="snackbar"
        :color="color"
        bottom
        right
        :timeout="timeout"
      >
        {{mensaje}}
      </v-snackbar>

      <h1 class="mb-4 title primary--text"><v-icon class="mr-2 primary--text">description</v-icon>{{documento.documento}}</h1>
      <v-stepper v-model="paso" vertical>
        <v-stepper-step step="1" editable complete >
          Datos del Encuestado
          <small>Descripción de datos del encuestado.</small>
        </v-stepper-step>

        <v-stepper-content step="1">
          <Formulario @obtener_encuestado="obtenerEncuestado" />
        </v-stepper-content>
      
      <template v-for="(capitulo, i) in documento.capitulos">
        <!--Paso 1 es el formulario. Si esta en formulario no se puede elegir 
            manualmente otro paso hasta que este en otro paso-->
        <v-stepper-step 
          :step="i + 2"
          :complete="paso > (i+2)"
          :key="`capitulo_${i}`" 
          :editable="(paso == 1) ? false: true"
        >
          {{`Cap. ${capitulo.noCapitulo}. ${capitulo.capitulo}`}}
        </v-stepper-step>
        <v-stepper-content :step="i + 2" :key="`contentstep_${i}`">
          <v-expansion-panels popout :key="`expansion_${i}`">
            <template v-for="(articulo, j) in capitulo.articulos">
              <v-expansion-panel :key="`primera_expansion_${i}${j}`">
                <v-expansion-panel-header>
                  <div>
                    <v-icon class="mr-2">notes</v-icon>
                    {{`Art. ${articulo.noArticulo}. ${articulo.articulo}`}}
                  </div>
                </v-expansion-panel-header>

                <v-expansion-panel-content>
                  <v-expansion-panels  focusable>
                    <v-expansion-panel v-for="(requerimientos, k) in articulo.requerimientos" :key="`requerimiento_${i}${j}${k}`">
                      <v-expansion-panel-header v-slot="{ open }">
                        <v-row no-gutters>
                          <v-col cols="8">
                            {{`${requerimientos.noInciso}. ${requerimientos.inciso}`}}
                          </v-col>
                          <v-col
                            cols="4"
                            class="text--secondary"
                          >
                            <v-fade-transition leave-absolute>
                              <span v-if="open">
                                Seleccione el estado del requerimiento
                              </span>
                              <span class="ml-4" v-else> 
                                {{ documento.capitulos[i].articulos[j].requerimientos[k].estado.estado }} 
                              </span>
                            </v-fade-transition>
                          </v-col>
                        </v-row>
                      </v-expansion-panel-header>
                      <v-expansion-panel-content>
                        <v-row>
                          <v-col cols="12" sm="6">
                            <v-select
                              v-model="documento.capitulos[i].articulos[j].requerimientos[k].estado"
                              :items="estados"
                              item-text="estado"
                              return-object
                              color="primary"
                              label="Estado"
                              required
                            ></v-select>
                          </v-col>

                          <v-col cols="12">
                            <v-textarea
                              color="teal"
                              v-model="documento.capitulos[i].articulos[j].requerimientos[k].nota"
                            >

                              <template v-slot:label>
                                <div>
                                  Notas <small>(opcional)</small>
                                </div>
                              </template>
                            </v-textarea>
                          </v-col>
                        </v-row>
                      </v-expansion-panel-content>
                    </v-expansion-panel>
                  </v-expansion-panels>
                </v-expansion-panel-content>
              </v-expansion-panel>
            </template>
          </v-expansion-panels>
        </v-stepper-content>
      </template>
      <div class="text-center mt-5">
        <v-btn 
          color="success" 
          :disabled="paso==1" 
          @click="enviarEvaluacion"
        >
          <v-icon class="mr-2">done</v-icon> Finalizar Evaluación
        </v-btn>
      </div>
      </v-stepper>
    </template>
  </v-container>
</template>


<script>
  import axios from 'axios'
  import Formulario from './Encuestado'

  export default {
    data() {
      return {
        // snackbar
        timeout: 2000,
        mensaje: '',
        snackbar: false,
        color: '',

        // overlay
        cargaCompleta: false,
        overlay: true,

        encuestado: {
          nombres: '',
          apellidos: '',
          cargo: '',
          entidad: '',
          correo: '',
          telefono: ''
        },

        documento: {},
        estados: [],
        paso: 1
      }
    },
    created() {
      this.obtenerEstados()
      this.obtenerRequerimientos()
    },
    methods: {
      obtenerEncuestado(_encuestado) {
        this.encuestado = _encuestado
        this.paso++;
      },

      obtenerEstados() {
        const me = this
        axios.get('/api/estados/listar')
          .then(function(response) {
            me.estados = response.data
          })
          .catch(function(err) {
            console.log(err)
          })
      },

      obtenerRequerimientos() {
        const me = this
        const idDocumento = this.$route.params.idDocumento
        
        axios.get(`/api/documentos/${idDocumento}`)
          .then(function(respuesta) {
            me.documento = respuesta.data
            me.overlay = false
            me.cargaCompleta = true
            console.log(me.documento)
          })
          .catch(function(err) {
            console.log(err)
          })
      },

      async enviarEvaluacion() {
        const me = this
        const fecha = new Date()
        
        try {
          const respuestasDetalle = this.obtenerDetalleRespuestas()

          if(respuestasDetalle.length === 0) 
            this.mostrarMensaje(2000, 'No hay requerimientos evaluados.', 'warning')
          else {
            let evaluacion = {
              encuestado: {
                ... me.encuestado
              },
              fechaInicioEvaluacion: fecha,
              fechaFinEvaluacion: fecha,
              respuestas: [
                ... respuestasDetalle
              ]
            }
            console.log(evaluacion)
            const { data } = await axios.post('/api/evaluaciones', evaluacion)
            this.mostrarMensaje(2000, 'Evalución guardada exitosamente.', 'success')
            me.$router.push(`/metricas/${data.idRespuesta}`)
          }
        }
        catch {
          this.mostrarMensaje(2000, 'Ha ocurrido un problema de conexión.', 'error')
        }
      },

      obtenerDetalleRespuestas() {
        const me = this;
        let respuestasDetalle = [];

        this.documento.capitulos.forEach(capitulo => {
          capitulo.articulos.forEach(articulo => {
            articulo.requerimientos.forEach(requerimiento => {
              const requerimientoRespondido = Object.keys(requerimiento.estado).length > 0
              if(requerimientoRespondido) 
                respuestasDetalle.push({
                  idRequerimiento: requerimiento.idRequerimiento,
                  idEstado: requerimiento.estado.idEstado,
                  comentario: (requerimiento.nota === undefined) ? '' : requerimiento.nota
                })
            })
          })
        });
        return respuestasDetalle;
      },

      mostrarMensaje(timeout, mensaje, color) {
        this.snackbar = true
        this.timeout = timeout 
        this.mensaje = mensaje
        this.color = color 
      }
        
    },
    components: {
      Formulario
    }
  }
</script>