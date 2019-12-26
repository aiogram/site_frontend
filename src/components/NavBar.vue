<template>
  <v-app-bar app color="primary" dark>
    <v-toolbar-items>
      <v-btn text style="text-transform: none;" href="/">
        <v-img
          alt="aiogram logo"
          class="shrink mr-2"
          contain
          :src="require('@/assets/logo.png')"
          width="40"
          @click="$route"
        />
        <v-toolbar-title>aiogram</v-toolbar-title>
      </v-btn>
    </v-toolbar-items>
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
