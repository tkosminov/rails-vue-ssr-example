import Vue from 'vue';

import VBoards from './Boards.vue';

Vue.config.productionTip = false;

let el = document.getElementById('boards_index')

if (el) {
  new Vue({
    render: (h) => h(VBoards),
  }).$mount('#boards_index');
}

