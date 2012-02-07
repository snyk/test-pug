$().ready(function(){
  $(".song .player").hide();

  $(".song-title").click(function(){
    $(this).parent().parent().find(".player").slideToggle();
    return false;
  });
});
