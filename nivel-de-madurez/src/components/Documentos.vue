<template>
  <v-container>
    <v-row>
      <v-col class="align-content-start" cols="6" v-for="doc in documentos" :key="doc.idDocumento">
        <v-card elevation="3">
          <v-card-title>
            <div><v-icon class="mr-2 primary--text">description</v-icon> <span class="title primary--text">{{doc.documento}}</span></div>
            <span class="grey--text subtitle-1">{{doc.descripcion}}</span>
          </v-card-title>
          
          <v-card-text>
            <v-list shaped mt-3>
              <v-subheader>CAPÍTULOS</v-subheader>
                <v-list-item v-for="(cap, item) in doc.capitulos" :key="item">
                  <v-list-item-content>
                    <v-list-item-title><span>Cap. {{cap.noCapitulo}}</span> {{cap.capitulo}}</v-list-item-title>
                  </v-list-item-content>
                </v-list-item>
            </v-list>
          </v-card-text>

          <v-card-actions>
            <v-btn text color="primary" @click="evaluarDocumento(doc.idDocumento)"><v-icon class="mr-2">create</v-icon> Empezar evaluación</v-btn>
          </v-card-actions>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import axios from 'axios'

export default {
  data() {
    return {
      documentos: []
    }
  },
  created() {
    this.listar()
  },
  methods: {

    listar() {
      const me = this;

      axios.get('/api/documentos').then(function(response) {
        me.documentos = response.data;
      }).catch(function(err) {
        console.log(err);
      })
    },

    evaluarDocumento(idDocumento) {
      this.$router.push(`documentos/${idDocumento}/evaluar`)
    }

  }
};

</script>
