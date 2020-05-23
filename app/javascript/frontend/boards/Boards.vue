<template>
  <div id="v-boards">
    <CNavigation />

    <h1>Root</h1>
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
export default class VBoards extends Vue {}
</script>
