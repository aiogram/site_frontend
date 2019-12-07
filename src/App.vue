<template>
  <v-app>
    <NavBar/>
    <v-content>
      <v-fade-transition>
        <router-view/>
      </v-fade-transition>
    </v-content>
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
