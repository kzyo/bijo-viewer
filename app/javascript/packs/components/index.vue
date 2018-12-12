<template>
<div>
  <ul id="tiles">
    <li v-for="image in tweet_images">
      <img v-bind:src="image.url" v-bind:width="image.width + 'px'" v-bind:height="image.height + 'px'" />
    </li>
  </ul>
  <div id="loading">
    <img src="/loading.gif" alt="loading">
  </div>
</div>
</template>


<script>
  import axios from 'axios';

  export default {
    data: function () {
     return {
       tweet_images: []
     }
    },
    methods: {
      get_images: function(){
        axios.get('/api/bijo_images')
        .then((res) => {
          this.tweet_images = this.tweet_images.concat(res.data['bijo_images']);
        });
      },
    },
    created: function() {
      this.get_images();
    }
  }
</script>
