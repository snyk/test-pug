$().ready(function(){
  $(".song .player").hide();

  $(".song").click(function(){
    $(this).find(".player").slideToggle();
    return false;
  });
});
