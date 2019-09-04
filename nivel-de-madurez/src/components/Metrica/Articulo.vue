<template>
  <v-expansion-panels >
    <v-expansion-panel>
      <v-expansion-panel-header>
        <div>
          <v-icon class="mr-2">notes</v-icon>
          {{`Art. ${articulo.noArticulo} ${articulo.articulo}`}}
        </div>
      </v-expansion-panel-header>
      <v-expansion-panel-content>
        <template v-for="(requerimiento, k) in articulo.requerimientos">
          <requerimiento :requerimiento="requerimiento" :key="k"/>
        </template>
      </v-expansion-panel-content>
    </v-expansion-panel>
  </v-expansion-panels>
</template>

<script>
import Requerimiento from './Requerimiento'

export default {
  components: {
    requerimiento: Requerimiento
  },
  props: ['articulo']
}
</script>