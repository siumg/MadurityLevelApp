<template>
  <v-row justify="center">
    <v-dialog v-model="dialog" persistent max-width="600px">
      <v-form
        ref="form_documento"
        v-model="valid"
        lazy-validation
      >
        <v-card>
          <v-card-title>
            <v-icon class="mr-2">description</v-icon>
            <span class="headline"> {{titulo}}</span>
          </v-card-title>

          <v-card-text>
            <v-container>
              <v-row>
                <v-col cols="12">
                  <v-text-field 
                    v-model="editedItem.documento"
                    :counter="100"
                    :rules="documentoRules"
                    label="Documento*"
                    autofocus="autofocus"
                  ></v-text-field>
                </v-col>

                <v-col cols="12">
                  <v-textarea
                    color="teal"
                    v-model="editedItem.descripcion"
                    :counter="500"
                    :rules="descripcionRules"
                  >
                    <template v-slot:label>
                      <div>
                        Descripción <small>(opcional)</small>
                      </div>
                    </template>
                  </v-textarea>
                </v-col>
              </v-row>
              <small>*Indica campos requeridos</small>
            </v-container>
          </v-card-text>

          <v-container>
            <v-card-actions>
                <div class="flex-grow-1"></div>
                <v-btn text @click="close">Salir</v-btn>
                <v-btn class="primary" @click="save">Guardar</v-btn>
            </v-card-actions>
          </v-container>
        </v-card>
      </v-form>
    </v-dialog>
  </v-row>
</template>

<script>
export default {
  props: ['dialog', 'titulo'],
  data: () => ({
    valid: true,
    
    editedItem: {
      documento: '',
      descripcion: ''
    },

    defaultItem: {
      documento: '',
      descripcion: ''
    },

    documentoRules: [
      v => !!v || 'Llene el campo solicitado.',
      v => (v && v.length <= 60) || 'El campo no debe exceder de 100 caracteres.'
    ],

    descripcionRules: [v => (v.length <= 60) || 'El campo no debe exceder de 500 caracteres.']
  }),
  methods: {
    editItem (item) {
      // this.editedIndex = this.desserts.indexOf(item)
      // this.editedItem = Object.assign({}, item)
      // this.dialog = true
    },

    close () {
      this.$emit("cerrar")
      this.editedItem = Object.assign({}, this.defaultItem)
      this.$emit("editar", -1)
      this.$refs.form_documento.resetValidation()
    },

    save () {
      if(this.$refs.form_documento.validate())
        console.log('valido')
      // if (this.editedIndex > -1) {
      //   Object.assign(this.desserts[this.editedIndex], this.editedItem)
      // } else {
      //   this.desserts.push(this.editedItem)
      // }
      // this.close()
    }
  }
}
</script>