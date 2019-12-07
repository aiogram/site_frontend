<template>
  <v-app-bar app color="primary" dark>
    <div class="d-flex align-center">
      <v-img
        alt="aiogram logo"
        class="shrink mr-2"
        contain
        :src="require('@/assets/logo.png')"
        transition="scale-transition"
        width="40"
        @click="$route"
      />
      <v-toolbar-title>aiogram</v-toolbar-title>
    </div>
    <v-spacer/>
    <v-toolbar-items>
      <GithubStatus/>
    </v-toolbar-items>
  </v-app-bar>
</template>

<script>
  import GithubStatus from "./GithubStatus";

  export default {
    name: "NavBar",
    components: {GithubStatus},
  }
</script>

<style scoped>

</style>
