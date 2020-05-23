import Vue from 'vue';

import VArticles from './Articles.vue';

Vue.config.productionTip = false;

let el = document.getElementById('articles_index')

if (el) {
  new Vue({
    render: (h) => h(VArticles),
  }).$mount('#articles_index');
}

