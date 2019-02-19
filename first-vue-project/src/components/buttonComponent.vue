/* eslint-disable */
<template>
<div class="hello">
        <div id="app">
        <p>{{ foo }}</p>
        <!-- this will no longer update `foo`! -->
        <button v-on:click="foo = 'baz'">Change it</button>
        </div>
</div>
</template>
<script>
var obj = {
  foo: 'bar'
}

Object.freeze(obj)

new Vue({
  el: '#Button',
  data: obj
})

// export default {
//   name: 'Button',
//   components: {

//   }
  
// }
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
