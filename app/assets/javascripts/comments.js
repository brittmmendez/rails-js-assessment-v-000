$(function(){
  $(document).on("click", "a.load_comments", function(e) {
    //Requesting JSON
    $.get(this.href).success(function(json){
      var $ol = $("div.comments ol")
      $ol.html("")
      json.forEach(function(comment){
        $ol.append("<li> <strong>" + comment.user.email + "</strong>: " +  comment.content + "</li>");
      })
    })
    //load that response into the HTML of the page
    e.preventDefault();
  })
})

