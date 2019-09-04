import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import vuetify from './plugins/vuetify';
import VueApexCharts from "vue-apexcharts";
import axios from "axios";

//quite lo de donut porque no me servia, ahi lo pruebas si asi es
Vue.use(VueApexCharts);

axios.defaults.baseURL = 'https://localhost:44360'

Vue.config.productionTip = false

new Vue({
  router,
  store,
  vuetify,
  render: h => h(App)
}).$mount('#app')
