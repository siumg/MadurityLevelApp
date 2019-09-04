<template>
  <v-dialog
    v-model="dialogo"
    fullscreen
  >
    <v-card>
      <v-card-title class="headline mb-4">
        <span>Comentarios</span> 
        <v-spacer></v-spacer>
        <v-btn
          color="blue darken-1"
          text
          @click="$emit('cerrar')"
        >
          Cerrar
        </v-btn>
      </v-card-title>

      <v-card-text>
        <template>

        </template>
        
        <template>
          <v-stepper v-model="paso" vertical>
            <template
              v-for="(capitulo, i) in comentarios"
            >
              <v-stepper-step complete :key="`step_${i}`" :step="paso">
                {{`Cap. ${capitulo.noCapitulo}. ${capitulo.capitulo}`}}
                <small></small>
              </v-stepper-step>
            

              <v-stepper-content :key="`content_${i}`" :step="paso">
                <template v-for="(articulo, j) in capitulo.articulos">
                  <articulo :articulo="articulo" :key="j"/>
                </template>
              </v-stepper-content>
            </template>
          </v-stepper>
        </template>
      </v-card-text>
    </v-card>
  </v-dialog>
</template>

<script>
import Articulo from './Articulo'

export default {
  components: {
    articulo: Articulo
  },
  props: ['dialog', 'comentarios'],
  data: () => ({
    paso: 1
  }),
  computed: {
    dialogo: {
      // getter
      get: function () {
        return this.dialog
      },
      // setter
      set: function() {
        this.$emit("cerrar")
      }
    }
  }
}
</script>