<template>
  <v-list disabled shaped>
    <v-subheader>INFORMACIÓN GENERAL</v-subheader>
    <v-list-item-group>
      <v-list-item>
        <v-list-item-icon>
          <v-icon>location_city</v-icon>
        </v-list-item-icon>
        <v-list-item-content>
          <v-list-item-title>{{metrica.entidad}}</v-list-item-title>
        </v-list-item-content>
      </v-list-item>

      <v-list-item>
        <v-list-item-icon>
          <v-icon>person</v-icon>
        </v-list-item-icon>
        <v-list-item-content>
          <v-list-item-title v-text="metrica.encuestado"></v-list-item-title>
          <v-list-item-subtitle v-text="metrica.cargo"></v-list-item-subtitle>
        </v-list-item-content>
      </v-list-item>

      <v-list-item>
        <v-list-item-icon>
          <v-icon>email</v-icon>
        </v-list-item-icon>
        <v-list-item-content>
          <v-list-item-title>{{(metrica.correo) ? metrica.correo: 'Desconocido'}}</v-list-item-title>
        </v-list-item-content>
      </v-list-item>

      <v-list-item>
        <v-list-item-icon>
          <v-icon>smartphone</v-icon>
        </v-list-item-icon>
        <v-list-item-content>
          <v-list-item-title>{{(metrica.telefono) ? metrica.telefono : 'Desconocido'}}</v-list-item-title>
        </v-list-item-content>
      </v-list-item>
    </v-list-item-group>
  </v-list>
  <!-- <v-row>
    <v-col cols="12">
      <v-text-field
        readonly
        hide-details
        label="Entidad"
        outlined
        :value="info.entidad"
      ></v-text-field>
    </v-col>
    <v-col cols="12">
      <v-text-field
        readonly
        hide-details
        label="Encuestado"
        outlined
        :value="info.encuestado"
      ></v-text-field>
    </v-col>
    <v-col cols="12">
      <v-text-field
        readonly
        hide-details
        label="Puesto/Cargo"
        outlined
        :value="info.cargo"
      ></v-text-field>
    </v-col>
    <v-col cols="12" v-if="info.correo">
      <v-text-field
        readonly
        hide-details
        label="Correo electrónico"
        outlined
        :value="info.correo"
      ></v-text-field>
    </v-col>
    <v-col cols="12" v-if="info.telefono">
      <v-text-field
        readonly
        hide-details
        label="Teléfono"
        outlined
        :value="info.telefono"
      ></v-text-field>
    </v-col>
  </v-row> -->
</template>

<script>
export default {
    props: {
      metrica: Object
    }
}
</script>