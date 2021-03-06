$(function(){
    // use Jquery event handler for whn link is clicked
  $("a.load_comments").on("click", function(e) {
    // Get Comments via jQuery AJAX .get Method
    $.get(this.href).success(function(json){
      // select the div comment container
      var $ol = $("div.comments ol")
      //empty div container so it doesn't reload list and double comments
      $ol.html("")
      // call the function for each comment in the array
      json.forEach(function(comment){
        $ol.append(`<li> <strong> <a href='/users/${comment.user.id}'> ${comment.user.email} </a></strong>:${comment.content}</li>`);
      })
    })
    e.preventDefault();
  })
})

$(function() {
  function Comment(data) {
    this.id = data.id;
    this.content = data.content;
    this.user= data.user.email;
  }

    Comment.prototype.formatComment = function() {
    var html = "<li> <strong> <a href='/users/"+ this.id + "'>" + this.user + "</a></strong>: "+ this.content + "</li>";
    return html;
  }


  $(function(){
    // use Jquery event handler for whn btn is clicked to submit
    $("#new_comment").on("submit", function(e){
      e.preventDefault()
      $.ajax({
        type: "POST",
        url: this.action,
        //Encode a set of form elements as a string for submission.
        data: $(this).serialize(),
        success: function(json){
          //empty comment content box in form
          $("#comment_content").val("");
          var $ol = $("div.comments ol")
          // instantiate a new Comment object by running our constructor function and set comment variable equal to it
          var comment = new Comment(json);
          // call prototype .formatComment attribute on comment instance that points to the function and append it to $ol
          $ol.append(comment.formatComment())
        }
      });
      e.preventDefault();
    })
  });
})

$(function(){
  $(".filter").on("click", function(e){
    e.preventDefault();
    $.get(this.href).success(function(json){
      const result = json.filter(comment => comment.user.email !== "goodbye123@gmail.com")
      var $ol = $("div.comments ol")
      $ol.html("")
      // call the function for each comment in the array
      result.forEach(function(comment){
        $ol.append(`<li> <strong> <a href='/users/${comment.user.id}'> ${comment.user.email} </a></strong>:${comment.content}</li>`);
  })
  e.preventDefault();
})
})
})
