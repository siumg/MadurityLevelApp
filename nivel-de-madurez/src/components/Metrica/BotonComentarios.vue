<template>
  <v-btn
    :loading = "customLoad"
    color="info"
    text
    @click="$emit('abrir')"
  >
    <v-icon class="mr-2">comment</v-icon> Ver comentarios
    <template v-slot:loader>
      <span class="custom-loader">
        <v-icon light>cached</v-icon>
      </span>
    </template>
  </v-btn>
</template>

<script>
export default {
  props: ['customLoad']
}
</script>