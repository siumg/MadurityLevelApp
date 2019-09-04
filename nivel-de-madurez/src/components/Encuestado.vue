<template>
  <v-form
    ref="form"
    v-model="valid"
  >
    <v-row>
      <v-col cols="12" sm="6">
        <v-text-field 
          v-model="encuestado.nombres"
          :counter="60"
          :rules="nombresRules"
          label="Nombres*"
          prepend-icon="person"
          required
        ></v-text-field>
      </v-col>

      <v-col cols="12" sm="6">
        <v-text-field 
          v-model="encuestado.apellidos"
          :counter="60"
          :rules="nombresRules"
          label="Apellidos*"
          prepend-icon="person"
          required
        ></v-text-field>
      </v-col>

      <v-col cols="12" sm="6">
        <v-text-field 
          v-model="encuestado.cargo"
          :counter="100"
          :rules="cargoRules"
          label="Cargo*"
          prepend-icon="layers"
          required
        ></v-text-field>
      </v-col>

      <v-col cols="12" sm="6">
        <v-text-field 
          v-model="encuestado.entidad"
          :counter="200"
          :rules="entidadRules"
          label="Entidad*"
          prepend-icon="location_city"
          required
        ></v-text-field>
      </v-col>

      <v-col cols="12" sm="6">
        <v-text-field 
          v-model="encuestado.correo"
          :rules="emailRules"
          :counter="80"
          label="E-mail"
          prepend-icon="email"
        ></v-text-field>
      </v-col>

      <v-col cols="12" sm="6">
        <v-text-field 
          v-model="encuestado.telefono"
          :counter="8"
          :rules="telefonoRules"
          label="Teléfono"
          prepend-icon="smartphone"
        ></v-text-field>
      </v-col>

      <v-btn 
        color="primary" 
        @click="validarFormulario"
        :disabled="!valid"
      >
        Continuar
      </v-btn>
      <v-btn text @click="irADocumentos">Cancelar</v-btn>
     </v-row>
  </v-form>
</template>

<script>
  export default {
    props: ['valor'],
    data: () => ({
      encuestado: {
        nombres: '',
        apellidos: '',
        cargo: '',
        entidad: '',
        correo: '',
        telefono: ''
      },

      valid: false,
      
      nombresRules: [
        v => !!v || 'Llene el campo solicitado.',
        v => (v && v.length <= 60) || 'El campo no debe exceder de 60 caracteres.'
      ],
      
      emailRules: [
        v => (v) ?  /.+@.+\..+/.test(v) || 'Correo electrónico inválido.' : true,
        v => (v.length <= 80) || 'El campo no debe exceder de 80 caracteres.',
      ],
      
      entidadRules: [
        v => !!v || 'Llene el campo solicitado.',
        v => (v && v.length <= 200) || 'El campo no debe exceder de 200 caracteres.',
      ],
      
      cargoRules: [
        v => !!v || 'Llene el campo solicitado.',
        v => (v && v.length <= 100) || 'El campo no debe exceder de 100 caracteres.',
      ],
      
      telefonoRules: [
        t => (t) ? /^[1-9]\d{7}$/.test(t) || 'Número de teléfono/celular inválido.': true,
        t => (t.length <= 8) || 'El campo debe tener menos de 9 caracteres.',
      ],
    }),
    created() {
      //this.reset()
    },
    methods: {
      reset () {
        //this.$refs.form.reset()
      },
      submit() {
        //this.$refs.form.submit()
      },
      validarFormulario() {
        if (this.$refs.form.validate()) {
          this.$emit('obtener_encuestado', this.encuestado)
        }
      },
      irADocumentos() {
        this.$router.push('../../documentos')
      }
    }
  }
</script>