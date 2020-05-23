<template>
  <div id="c-navigation">
    <a v-for="link in routes" :key="link.name" :href="link.path" :id="link.path">
      <span>{{ link.name }}</span>
    </a>
  </div>
</template>

<style lang="scss" scoped>
#c-navigation {
  a {
    margin: 5px;
  }
}
</style>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";

@Component
export default class CNavigation extends Vue {
  private routes = [
    {
      name: 'Root',
      path: '/'
    },
    {
      name: 'Articles',
      path: '/articles'
    },
  ]
}
</script>
