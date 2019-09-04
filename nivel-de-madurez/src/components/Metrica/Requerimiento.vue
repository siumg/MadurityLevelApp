<template>
  <v-expansion-panels focusable>
    <v-expansion-panel>
      <v-expansion-panel-header>
        <v-row no-gutters>
          <v-col cols="8">
            {{`${requerimiento.noInciso}. ${requerimiento.inciso}`}}
          </v-col>
          <v-col
            cols="4"
            class="text--secondary"
          >
            <span class="ml-4"> {{ requerimiento.respuesta.estado }} </span> 
          </v-col>
        </v-row>
      </v-expansion-panel-header>
      <v-expansion-panel-content class="pa-2">
        {{requerimiento.respuesta.comentario}}
      </v-expansion-panel-content>
    </v-expansion-panel>
  </v-expansion-panels>
</template>

<script>
export default {
  props: ['requerimiento']
}
</script>