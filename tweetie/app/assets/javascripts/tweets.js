function characterCount(){
  var numberLeft = 140 - $("#tweet_body").val().length;

  $("#counter").html(numberLeft);

  // grey if 21 -> 140
  // maroon if 11 -> 20
  // red otherwise

  $("#counter").removeClass();


  if (numberLeft >= 21) {
    $("#counter").addClass("grey");
  } else if ( numberLeft >= 11) {
    $("#counter").addClass("maroon");
  } else {
    $("#counter").addClass("red");
  }

  // number left 0 > 139
  if ((numberLeft >= 0) && (numberLeft < 140)) {
    $(".btn").prop("disabled", false);
  } else {
    $(".btn").prop("disabled", true);
  }

}

$(window).ready(function(){
  $("#tweet_body").on("keyup", characterCount);

  if ($("#tweet_body").length > 0){
    characterCount();
  }

  $("#tweet_body").on("focus", function(){
    $("#tweet_body").addClass("active");
  })

  $("#tweet_body").on("focusout", function(){
    $("#tweet_body").removeClass("active");
  })
});
