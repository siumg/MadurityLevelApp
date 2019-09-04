<template>
  <v-container>
    <template v-if="!cargaCompleta">
      <v-overlay :value="overlay">
        <v-progress-circular indeterminate size="64"></v-progress-circular>
      </v-overlay>
    </template>

    <template v-else>
      <modalcomentarios 
        :dialog="dialog"
        :comentarios="capitulos"
        @cerrar="dialog=false"
      />

      <encabezadometrica 
        :documento="info.documento" 
        :fechainicio="info.fechaInicio" 
        :fechafinal="info.fechaFinal"
      />

      <v-row>
        <v-col cols="12" md="5">
          <infometrica :metrica="info" />
        </v-col>
        <v-col cols="12" md="7">
          <div>
            <div class="text-right">
              <botoncomentarios @mostrar="customLoad=!customLoad" @abrir="dialog=true"/>  
            </div>
            <apexcharts type="donut" width="100%" height="400" :options="chartOptions" :series="series"></apexcharts>
          </div>
        </v-col>
      </v-row>
    </template>
  </v-container>
</template>

<script>
import axios from 'axios'
import VueApexCharts from 'vue-apexcharts'
import EncabezadoMetrica from './Metrica/EncabezadoMetrica'
import InfoMetrica from './Metrica/InfoMetrica'
import BotonComentarios from './Metrica/BotonComentarios'
import ModalComentarios from './Metrica/ModalComentarios'

export default {
  components: {
    apexcharts: VueApexCharts,
    botoncomentarios: BotonComentarios,
    encabezadometrica: EncabezadoMetrica,
    infometrica: InfoMetrica,
    modalcomentarios: ModalComentarios
  },
  data: () => ({
    // data dummy
    capitulos: [],

    // modal
    dialog: false,

    // botoncomentarios
    customLoad: true,

    cargaCompleta: false,
    overlay: true,
    info: {
      documento: '',
      fechaInicio: '',
      fechaFinal: '',
      entidad: '',
      encuestado: '',
      cargo: '',
      correo: '',
      telefono: ''
    },

    series: [],
    
    chartOptions: {
      labels: [],
      colors: ['#ffeead', '#FF0000', '#CB4335', '#479f78', '#FFEF00', '#DCE775', '#7bbb44','#969696'],
      fill: {
        type: 'gradient'
      },
      title: {
        text: 'Métricas',
        floating: true,
        offsetY: 30,
        style: {
          fontSize: '1em'
        }
      },
      subtitle: {
        text: 'General'
      },
      legend: {
        position: 'bottom'
      },
      plotOptions: {
        donut: {
          position: 'center'
        }
      }
    }
  }),
  
  created() {
    this.llenarGrafica()
    this.llenarComentarios()
  },

  methods: {
    async llenarComentarios() {
      const idEvaluacion = this.$route.params.idEvaluacion
      const { data } = await axios.get(`/api/evaluaciones/${idEvaluacion}/comentarios`)
      this.capitulos = data
    },

    async llenarGrafica() {
      const me = this
      let respuesta = []
      const idEvaluacion = this.$route.params.idEvaluacion
      
      respuesta = await axios.get(`/api/evaluaciones/${idEvaluacion}/resultado`)
      Object.assign(me.info, respuesta.data)
      
      const { data } = await axios.get(`/api/evaluaciones/${idEvaluacion}/resultado/series`)
      data.forEach(d => {
        me.chartOptions.labels.push(d.estado)
        me.series.push(d.porcentaje)
      })

      me.cargaCompleta = true
      me.overlay = false
    }
  }
}
</script>