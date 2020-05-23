<template>
  <div id="v-articles">
    <CNavigation />

    <h1>Articles</h1>
  </div>
</template>

<style lang="scss" scoped></style>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";

import CNavigation from '../components/Navigation.vue'

@Component({
  components: {
    CNavigation,
  }
})
export default class VArticles extends Vue {}
</script>
