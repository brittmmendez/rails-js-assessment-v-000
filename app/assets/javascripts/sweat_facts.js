$(function () {
  $(".js-more").on('click', function() {
    // get the id from the data attribute
    var id = $(this).data("id");
    $.get("/workouts/" + id + "/workout_data", function(data) {
       // Replace text of body-id div
    $("#body-" + id).text(data["description"]);
    });
  });
});