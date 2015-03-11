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
    })
  });

  $("#magic_button").click(function() {
    $(".new_post_form").show();
  });

});
