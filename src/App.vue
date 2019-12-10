<template>
  <v-app>
    <NavBar/>
    <v-content>
      <transition name="fade-transition" mode="out-in">
        <router-view/>
      </transition>
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
