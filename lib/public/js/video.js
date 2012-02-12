$().ready(function(){
  embedFlash();
});

function videoId(){
  return $("input#video-id").val();
}

function embedFlash(){
  $("#youtube-player-container").tubeplayer({
      width: 640,
      height: 390,
      initialVideo: videoId(),
      autoPlay: true,
      onPlayerEnded: redirectToNextVideo
  });
}

function redirectToNextVideo(){
  window.location = $("#next-song-url").val();
}
