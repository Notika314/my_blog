$(document).ready(function() {
  $(".new_comment_form").submit(function(event) {
    event.preventDefault();
    var $target = $(event.target);
    $.ajax({
      type: $target.attr("method"),
      url: "/comments/create.json",
      data: $target.serialize(),
      dataType: "json",
      success: function(response) {
              $target.prev().find("ul").append("<li class='comment'>" + response.body + "</li>");
              },
      error: function(response) {
             console.log(response)
              }
    });
  });

  $(".delete_comment").submit(function(event) {
    event.preventDefault();
    var $target = $(event.target);
    $.ajax({
      type: "DELETE",
      url: $target.attr("action"),
    }).done(function(response) {
       $target.closest('.comment').remove()
    });
  });

  $("#magic_button").click(function() {
    $(".new_post_form").show();
  });


  $("#new_post_button").click(function() {
    $(".edit_comment").show();
  });

  $(".login").click(function() {
    $("signin").show();
    $(".signup").hide();
  });


  $(".register").click(function() {
    $("signup").show();
    $(".signin").hide();
  });




});
