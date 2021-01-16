<template>
  <div>
    <h3>{{ title }}</h3>
    <ul class="list-group">
      <li class="list-group-item"
        v-for='company in items' :key='company.code'>
        {{ company.title }} {{message}}
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
</style>
