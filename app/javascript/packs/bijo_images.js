import TurbolinksAdapter from 'vue-turbolinks'
import Vue from 'vue/dist/vue.esm'
import BijoImages from './components/index.vue'

Vue.use(TurbolinksAdapter)
document.addEventListener("DOMContentLoaded", function(event) {
  var bijo_images = new Vue({
    el: '#main',
    components: {
      bijoimages: BijoImages,
    },
  })
})
