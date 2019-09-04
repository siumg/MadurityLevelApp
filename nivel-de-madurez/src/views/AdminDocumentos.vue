<template>
  <v-container>
    <AdminDocumentos @abrir="dialog=true"  @editar="editedIndex = $event"/>
    <ModalNuevoDocumento :dialog="dialog" @cerrar="dialog=false" :titulo="formTitle"/>
  </v-container>
</template>

<script>
import AdminDocumentos from '../components/AdminDocumentos'
import ModalNuevoDocumento from '../components/AdminDocumentos/ModalDocumento'

export default {
  components: {
     AdminDocumentos,
     ModalNuevoDocumento 
  },
  data: () => ({
    dialog: false,
    editedIndex: -1
  }),
  computed: {
    formTitle () {
      return this.editedIndex === -1 ? 'Nuevo Documento' : 'Editar Documento'
    },
  },
  methods: {
  }
}
</script>