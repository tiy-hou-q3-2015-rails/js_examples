$(window).ready(function(){


  $("a.playit").on("click", function(){
    // mark X instantly
    $(this).find(".tile").text("X");
  })


})
