<template>
  <v-container>
    <Evaluar />
  </v-container>
</template>

<script>
import Evaluar from '../components/Evaluar';

export default {
  data: () => ({
    listo: false
  }),
  components: {
    Evaluar,
  },
};
</script>