<template>
  <v-btn
    :href="github.url"
    target="_blank"
    text
    class="githubButton no-text-transform"
  >
    <v-icon class="btnIcon">mdi-github-face</v-icon>
    <span class="githubButton_content">
      <span class="subtitle-2">{{ github.account }}/{{ github.repository }}</span>
      <v-fade-transition>
        <span class="caption" v-if="statistic.loaded">
          <br/>
          Stars: {{ statistic.stargazers_count }}
          Forks: {{ statistic.forks }}
        </span>
      </v-fade-transition>
    </span>
  </v-btn>
</template>

<script>
  export default {
    name: "GithubStatus",
    data: () => ({
      github: {
        account: 'aiogram',
        repository: 'aiogram',
        url: null
      },
      statistic: {
        loaded: false,
        stargazers_count: 0,
        forks: 0,
        open_issues: 0
      },
    }),
    mounted() {
      this.github.url = `https://github.com/${this.github.account}/${this.github.repository}`

      axios.get(`https://api.github.com/repos/${this.github.account}/${this.github.repository}`).then((result) => {
        this.statistic.stargazers_count = result.data.stargazers_count
        this.statistic.forks = result.data.forks
        this.statistic.open_issues = result.data.open_issues
        this.statistic.loaded = true
      }).catch(() => {
      })
    }
  }
</script>

<style scoped>
  .githubButton {
    text-transform: none;
  }

  .githubButton_content {
    white-space: normal;
  }

  .btnIcon {
    padding-right: 10px;
  }
</style>
