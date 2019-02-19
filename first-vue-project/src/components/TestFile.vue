/* eslint-disable */
<template>
<div class="hello">
<h1>{{ msg }}</h1>
<router-link tag="li" to="/home">
     <h3><a>HOME PAGE </a> </h3>
     <h4>{{testName}}</h4>
</router-link>

<button @click="runClick()">Run</button>

</div>
</template>
<script>


export default {
  name: 'TestFile',
  data () {
    return {
        msg: 'Welcome to Test FILE',
        testName : 'this is Test Name',
        users: []
}
  },
  created() {
    console.log('this is in created ')

    var vm = this
    this.$http
      .get('https://jsonplaceholder.typicode.com/todos/1')
      .then(response => response.json())
        .then(json => console.log(json))
    
  },
   beforeCreate: function() {
    console.log('this is before create')
  },
  methods:
   {
        runClick: () => {
        alert('Alert')    
  }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
