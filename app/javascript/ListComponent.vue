<template>
  <div>
    <h3>{{ title }}</h3>
    <ul class="list-group">
      <li :class="['list-group-item', coloredTitle(company), removeA(company) ]"
        v-for='company in items' :key='company.code'>
        {{ company.title }}
      </li>
    </ul>
  </div>
</template>

<script>
import ListComponent from './TwoListComponent'
export default {
  name: 'ListComponent',
  props: {
    title: {
      type: String,
      required: true
    },
    items: {
      type: Array,
      required: true
    },
    checked: {
      type: String,
      required: false
    }
  },
  components: {
    ListComponent
  },
  mounted () {
  },
  beforeUpdate () {
  },
  data () {
    return {}
  },
  methods: {
    coloredTitle: (company) => {
      if (company.title[0].toLowerCase() == "s") {
        return "text-warning";
      } else if (company.title.length % 2 == 0) {
        return "text-danger";
      } else if (company.title.length % 2 != 0) {
        return "text-primary";
      }
    },
    removeA: function (company) {
      if (this.checked == 'yes' && company.title[0].toLowerCase() == "a") {
        return "text-removed"
      }
    }
  },
  computed: {

  },
  watch: {
  }
}
</script>

<style lang="css" scoped>
/* .row {
  background-color: #f5f5f5;
} */
  .text-removed {
    text-decoration: line-through;
  }
</style>
