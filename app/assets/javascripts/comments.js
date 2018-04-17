// Get Comments via AJAX
$(function(){
  $("a.load_comments").on("click", function(e) {
    //Requesting JSON
    $.get(this.href).success(function(json){
      var $ol = $("div.comments ol")
      $ol.html("")
      json.forEach(function(comment){
        $ol.append("<li> <strong>" + comment.user.email + "</strong>: " +  comment.content + "</li>");
      })
    })
    e.preventDefault();
  })
})


// Submit Comments via AJAX
$(function(){
  $("#new_comment").on("submit", function(e){
    e.preventDefault()
    $.ajax({
      type: "POST",
      url: this.action,
      data: $(this).serialize(),
      success: function(response){
        $("#comment_content").val("");
        var $ol = $("div.comments ol")
        $ol.append(response);
      }
    });
    e.preventDefault();
  })
});