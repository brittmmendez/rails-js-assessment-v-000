  $(function () {
    $(".js-next").on("click", function() {
      var nextId = parseInt($(".js-next").attr("data-id")) + 1;
      $.getJSON("/workouts/" + nextId + ".json", function(data) {
        id=data["id"]
        $(".workoutName").text(data["name"]);
        $(".userName").attr("data-id", data["user"]["user_id"])
        $(".userName").attr("href", "/users/" + data["user"]["user_id"])
        $(".userName").text(data["user"]["email"])
        //not sure how to get date modified changed
        //not sure how to get action items rendered to match
        $(".vid").attr("src", data["website"])
        $(".website").attr("href", data["website"])
        $(".website").text(data["website"])
        $(".duration").html(data["duration"])
        $(".difficulty").html(data["difficulty"])  
        $(".training").html(data["training_type"]["name"]) 
         $(".focus").html(data["category"]["name"]) 
        $(".equipment").html(data["equipment"]) 
        $("#new_comment").attr("action", "/workouts/" + id + "/comments")
        $(".load_comments").attr("href", "/workouts/" + id + "/comments")
        $(".comments").html("")

        // re-set the id to current on the link
        $(".js-next").attr("data-id", id);
        $(".js-back").attr("data-id", id);
      });
    });
  });

  $(function () {
    $(".js-back").on("click", function() {
      var backId = parseInt($(".js-next").attr("data-id")) - 1;
      $.getJSON("/workouts/" + backId + ".json", function(data) {
        id=data["id"]
        $(".workoutName").text(data["name"]);
        $(".userName").attr("data-id", data["user"]["user_id"])
        $(".userName").attr("href", "/users/" + data["user"]["user_id"])
        $(".userName").text(data["user"]["email"])
        $(".vid").attr("src", data["website"])
        $(".website").attr("href", data["website"])
        $(".website").text(data["website"])
        $(".duration").html(data["duration"])
        $(".difficulty").html(data["difficulty"])  
        $(".training").html(data["training_type"]["name"]) 
         $(".focus").html(data["category"]["name"]) 
        $(".equipment").html(data["equipment"])
        $("#new_comment").attr("action", "/workouts/" + id + "/comments")
        $(".load_comments").attr("href", "/workouts/" + id + "/comments")
        $(".comments").html("")

        // re-set the id to current on the link
        $(".js-next").attr("data-id", id);
        $(".js-back").attr("data-id", id);
      });
    });
  });