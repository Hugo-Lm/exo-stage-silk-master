<template>
  <div class="row p-3 bg-light">
    <div class="col-md-6">
      <list-component title='Liste A' :items='listA'></list-component>
    </div>
    <div class="col-md-6">
      <list-component title='Liste B' :items='listB'></list-component>
      <!-- <h3>Liste B</h3> -->
    </div>
    <button v-on:click="lastItemToListB()" class="mt-2 btn btn-primary">Switch</button>
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
      listA: [],
      listB: []
    }
  },
  methods: {
    lastItemToListB: function () {
      this.listB.push(this.listA[this.listA.length - 1]);
      this.listA.pop()
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
</style>
