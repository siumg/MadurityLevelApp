<template>
  <v-container>
    <v-btn 
      color="primary" class="mb-2" 
      dark bottom right fab fixed 
      @click="$emit('abrir')"
    >
      <v-icon>add</v-icon> 
    </v-btn>
    
    <v-data-table
      :headers="headers"
      :items="documentos"
      sort-by="documento"
      class="elevation-2"
    >
      <template v-slot:top>
        <v-toolbar flat color="white">
          <v-toolbar-title><v-icon class="mr-2">description</v-icon>Documentos</v-toolbar-title>
          <v-divider
            class="mx-4"
            inset
            vertical
          ></v-divider>
          <div class="flex-grow-1"></div>
        </v-toolbar>
      </template>

      <template v-slot:item.action="{ item }">
        <v-icon small class="mr-2" @click="editItem(item)">
          edit
        </v-icon>
        <v-icon small @click="deleteItem(item)">
          delete
        </v-icon>
      </template>

      <template v-slot:no-data>
        <h3>No hay documentos para mostrar</h3>
      </template>
    </v-data-table>
  </v-container>
</template>

<script>
import axios from 'axios'


export default {

  data: () => ({
    dialog: false,
    headers: [
      {
        text: 'Documento',
        align: 'left',
        sortable: false,
        value: 'documento',
      },
      { text: 'Descripción', value: 'descripcion' },
      { text: 'Capítulos', value: 'noCapitulos' },
      { text: 'Acciones', value: 'action', sortable: false },
    ],
    documentos: []
  }),

  watch: {
    dialog (val) {
      val || this.close()
    },
  },

  created () {
    this.obtenerDocumentos()
  },

  methods: {
    async obtenerDocumentos () {
      const { data } = await axios.get('/api/admin/documentos')
      this.documentos = data
    },

    editItem(item) {
      
    }
  }
}
</script>