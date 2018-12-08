<template>
  <ul id="tiles">
    <li v-for="image in tweet_images">
      <img v-bind:src="image.url" v-bind:width="image.width + 'px'" v-bind:height="image.height + 'px'" />
    </li>
  </ul>
</template>


<script>
  import axios from 'axios';
  export default {
    data: function () {
     return {
       tweet_images: []
     }
    },
    created: function () {
      axios.get('/api/bijo_images')
      .then((res) => {
        this.tweet_images = res.data.bijo_images
      })
    }
  }
</script>
