 // function showVideo(localMediaStream) {
 //   var video = document.querySelector('video');
 //   video.src = window.URL.createObjectURL(localMediaStream);
 // }
 //
 // navigator.webkitGetUserMedia({video: true, audio: true}, function(localMediaStream) {
 //   showVideo(localMediaStream)
 // }, function(e){
 //   console.log("Noooope");
 // });

var webCamPromise = new Promise(function(resolve, reject) {
   navigator.webkitGetUserMedia({video: true, audio: true}, function(localMediaStream) {
    resolve(localMediaStream)
  }, function(e){
    reject(e)
  })
});

webCamPromise.then(function(localMediaStream){
   var video = document.querySelector('video');
   video.src = window.URL.createObjectURL(localMediaStream);
}).catch(function(e){
  console.log("Kabooom")
})
