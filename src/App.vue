<template>
  <v-app>
    <NavBar/>
    <v-fade-transition>
      <router-view/>
    </v-fade-transition>
  </v-app>
</template>

<script>
  import NavBar from "./components/NavBar.vue";

  export default {
    name: 'App',

    components: {
      NavBar,
    },

    data: () => ({
      //
    }),
  };
</script>
