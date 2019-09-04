<template>
  <hgroup class="mb-4">
    <h1 align="center">{{documento}}</h1>
    <h3 align="center">{{fechainicio}} - {{fechafinal}}</h3>
  </hgroup>
</template>
<script>
export default {
  props: ['documento', 'fechainicio', 'fechafinal'],
}
</script>