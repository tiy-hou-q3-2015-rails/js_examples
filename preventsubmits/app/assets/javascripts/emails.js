$(window).ready(function(){
  // $("input[type='submit']").on("click", function(){
  //   alert("yo");
  // });

  $("form").on("submit", function(){

    $("#error_message").html("");
    
    // if recipient is blank or subject is blank or body is blank
    // return false;

    var recipient = $("#email_recipient").val();
    var subject = $("#email_subject").val();
    var body = $("#email_body").val();

    var errorMessages = [];

    if (recipient.length === 0){
      errorMessages.push("Recipient is required, Yo");
    }

    if (subject.length === 0){
      errorMessages.push("subject is required, Yo");
    }

    if (body.length === 0){
      errorMessages.push("body is required, Yo");
    }

    if (errorMessages.length !== 0){
      // Add errorMessages to somewhere on the form
      // each item in errorMessages array should become a paragraph inside "#error_message"

      // errorMessages.each do |error_message|
      // end



      errorMessages.forEach(function(message){
        $("#error_message").append("<p>" + message + "</p>");
      });



      return false;
    }

  })
});
