import Vue from 'vue'
import Router from 'vue-router'

import Home from './views/Home.vue'
import AdminDocumentos from './views/AdminDocumentos.vue'
import Metricas from './views/Metricas.vue'
import Evaluar from './views/Evaluar.vue'
import Metrica from './views/Metrica.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/admin/documentos',
      name: 'admindocumentos',
      component: AdminDocumentos
    },
    {
      path: '/documentos/:idDocumento/evaluar',
      name: 'evaluar',
      component: Evaluar
    },
    {
      path: '/metricas/:idEvaluacion',
      name: 'metrica',
      component: Metrica
    },
    {
      path: '/metricas',
      name: 'metricas',
      component: Metricas
    }
  ]
})
