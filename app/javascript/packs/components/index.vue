<template>
  <ul id="tiles">
    <li v-for="image in tweet_images">
      <img v-bind:src="image.url" v-bind:width="image.width + 'px'" v-bind:height="image.height + 'px'" />
    </li>
  </ul>
</template>


<script>
  export default {
    data: function () {
     return {
       tweet_images: [{"tweet_id":1066653158779355136,"width":499,"height":750,"url":"http://pbs.twimg.com/media/Ds17bETU4AABnR2.jpg"},{"tweet_id":1066653912193630208,"width":750,"height":936,"url":"http://pbs.twimg.com/media/Dszq7IUVsAA8mBy.jpg"},{"tweet_id":1066653912193630208,"width":682,"height":1024,"url":"http://pbs.twimg.com/media/Dszq7IVU0AE4KDI.jpg"},{"tweet_id":1066653912193630208,"width":682,"height":1024,"url":"http://pbs.twimg.com/media/Dszq7ITU8AAhMq6.jpg"},{"tweet_id":1066653912193630208,"width":557,"height":744,"url":"http://pbs.twimg.com/media/Dszq7ITVsAA4Y8e.jpg"},{"tweet_id":1066654409998839808,"width":750,"height":936,"url":"http://pbs.twimg.com/media/Dszq7IUVsAA8mBy.jpg"},{"tweet_id":1066654409998839808,"width":682,"height":1024,"url":"http://pbs.twimg.com/media/Dszq7IVU0AE4KDI.jpg"},{"tweet_id":1066654409998839808,"width":682,"height":1024,"url":"http://pbs.twimg.com/media/Dszq7ITU8AAhMq6.jpg"},{"tweet_id":1066654409998839808,"width":557,"height":744,"url":"http://pbs.twimg.com/media/Dszq7ITVsAA4Y8e.jpg"}]
     }
    }
  }
</script>
