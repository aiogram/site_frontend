<template>
  <v-card
    class="ma-2"
    max-width="200px"
    :href="profile"
    target="_blank"
  >
    <v-img
      :src="avatar"
      :alt="username"
    />
    <v-card-title>{{ username }}</v-card-title>
    <v-card-subtitle>Contributions: {{ contributions }}</v-card-subtitle>
    <v-card-text v-if="description">{{ description }}</v-card-text>
  </v-card>
</template>

<script>
  export default {
    name: "ContributorCard",
    props: {
      username: String,
      description: String,
      contributions: String,
      profile: String,
      avatar: String,
    },
  }
</script>

<style scoped>

</style>
