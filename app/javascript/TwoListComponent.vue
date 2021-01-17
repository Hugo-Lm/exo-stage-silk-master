<template>
  <div class="row p-3 bg-light">
    <div class="col-md-6">
      <list-component title='Liste A' :items='listA' :checked='checkedBox'></list-component>
    </div>
    <div class="col-md-6">
      <list-component title='Liste B' :items='listB' :checked='checkedBox'></list-component>
      <!-- <h3>Liste B</h3> -->
    </div>
    <div class="options-lists d-flex justify-content-around w-100 align-items-center mt-2">
      <button v-on:click="lastItemToListB()" class="btn btn-primary">Switch</button>
      <div class="a-checkbox">
        <label for="removeA">Let's remove all those A's</label>
        <input type="checkbox"
          id="removeA"
          v-model="checkedBox"
          true-value="yes"
          false-value="no">
      </div>
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
      listA: [],
      listB: [],
      checkedBox: 'no'
    }
  },
  methods: {
    lastItemToListB: function () {
      this.listB.push(this.listA[this.listA.length - 1]);
      this.listA.pop()
    },
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
