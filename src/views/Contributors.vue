<template>

  <v-container>
    <h1>Our contributors</h1>
    <div class="d-flex justify-center flex-wrap" v-if="loaded">
      <ContributorCard
        v-for="contributor of contributors"
        :key="contributor.id"
        :username="contributor.login"
        :avatar="contributor.avatar_url || contributor.gravatar_id"
        :profile="contributor.html_url"
        :contributions="`${contributor.contributions}`"
      />
    </div>
    <div v-if="!loaded && !error" class="d-flex justify-center align-center">
      <v-progress-circular
        size="50"
        color="primary"
        indeterminate
      />
    </div>
  </v-container>
</template>
<script>
  import ContributorCard from "../components/ContributorCard";

  export default {
    name: "Contributors",
    components: {ContributorCard},
    data: () => ({
      github: {
        account: 'aiogram',
        repository: 'aiogram',
        url: null
      },
      loaded: false,
      error: '',
      contributors: [],
    }),
    mounted() {
      axios.get(`https://api.github.com/repos/${this.github.account}/${this.github.repository}/contributors`).then((result) => {
        this.contributors = result.data
        this.loaded = true
      }).catch(
        () => {
          this.error = 'Failed to load contributors list'
          this.loaded = true
        }
      )
    },
  }
</script>

<style scoped>

</style>
