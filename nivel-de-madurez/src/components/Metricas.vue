<template>
  <v-container>
    <v-row>
      <v-col class="align-content-start" cols="6" v-for="metrica in metricas" :key="metrica.idRespuesta">
        <v-card elevation="3">
          <v-card-title>
            <div>
              <v-icon class="mr-2 primary--text">description</v-icon> 
              <span class="title primary--text">{{metrica.documento}}</span>
            </div>
            <span class="grey--text subtitle-1">{{metrica.fechaInicio}} - {{metrica.fechaFinal}}</span>
          </v-card-title>
          
          <v-card-text>
            <v-list disabled shaped>
              <v-subheader>INFORMACIÓN GENERAL</v-subheader>
              <v-list-item-group>
                <v-list-item>
                  <v-list-item-icon>
                    <v-icon>location_city</v-icon>
                  </v-list-item-icon>
                  <v-list-item-content>
                    <v-list-item-title>{{metrica.entidad}}</v-list-item-title>
                  </v-list-item-content>
                </v-list-item>

                <v-list-item>
                  <v-list-item-icon>
                    <v-icon>person</v-icon>
                  </v-list-item-icon>
                  <v-list-item-content>
                    <v-list-item-title v-text="metrica.encuestado"></v-list-item-title>
                    <v-list-item-subtitle v-text="metrica.cargo"></v-list-item-subtitle>
                  </v-list-item-content>
                </v-list-item>

                <v-list-item>
                  <v-list-item-icon>
                    <v-icon>email</v-icon>
                  </v-list-item-icon>
                  <v-list-item-content>
                    <v-list-item-title>{{(metrica.correo) ? metrica.correo: 'Desconocido'}}</v-list-item-title>
                  </v-list-item-content>
                </v-list-item>

                <v-list-item>
                  <v-list-item-icon>
                    <v-icon>smartphone</v-icon>
                  </v-list-item-icon>
                  <v-list-item-content>
                    <v-list-item-title>{{(metrica.telefono) ? metrica.telefono : 'Desconocido'}}</v-list-item-title>
                  </v-list-item-content>
                </v-list-item>
              </v-list-item-group>
            </v-list>
          </v-card-text>

          <v-card-actions>
            <v-btn 
              text 
              color="primary" 
              @click="irAMetrica(metrica.idRespuesta)"
            >
              <v-icon class="mr-2">launch</v-icon> Ver métrica
            </v-btn>
          </v-card-actions>
        </v-card>
      </v-col>
    </v-row>
      
  </v-container>
</template>

<script>
import axios from 'axios'

export default {
    data: () => ({
       metricas: []
    }),
    created() {
      this.obtenerMetricas()
    },
    methods: {
      irAMetrica(idRespuesta) {
        this.$router.push(`metricas/${idRespuesta}`)
      },
      async obtenerMetricas() {
        const { data } = await axios.get('/api/evaluaciones/resultados')
        if(data.lenght === 0) console.log('hola')
        else this.metricas = data
      }
    }
}
</script>
