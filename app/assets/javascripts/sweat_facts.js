$(function () {
  // use Jquery event handler for whn button is clicked
  $(".js-more").on('click', function() {
    // use Jquery AJAX .get Method to get the id from the data attribute
    var id = $(this).data("id");
    $.get("/workouts/" + id + ".json", function(data) {
       // Replace text of body-id div with description
    $("#body-" + id).text(data["description"]);
    });
  });
});
