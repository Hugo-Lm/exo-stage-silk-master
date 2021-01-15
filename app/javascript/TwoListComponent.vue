<template>
  <div class="row p-3 bg-light">
    <div class="col-md-6">
      <list-component title='Liste A' :items='listA'></list-component>
    </div>
      <!-- <list-component title='Liste B'></list-component> -->
    <div class="col-md-6">
      <h3>Liste B</h3>
    </div>
  </div>
</template>

<script>
import ListComponent from './ListComponent'
export default {
  name: 'TwoListComponent',
  props: {
    items: {
      type: Array,
      required: true
    }
  },
  components: {
    ListComponent
  },
  mounted () {
    this.listA = this.items
  },
  beforeUpdate () {
  },
  data () {
    return {
      listA: []
    }
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