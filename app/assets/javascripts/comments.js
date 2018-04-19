// Get Comments via AJAX
$(function(){
  $("a.load_comments").on("click", function(e) {
    //Requesting JSON
    $.get(this.href).success(function(json){
      var $ol = $("div.comments ol")
      $ol.html("")
      json.forEach(function(comment){
        //debugger
        $ol.append("<li> <strong> <a href='/users/"+comment.user.id + "'>" + comment.user.email + "</a></strong>: " +  comment.content + "</li>");
      })
    })
    e.preventDefault();
  })
})



// // Submit Comments via AJAX
// $(function(){
//   $("#new_comment").on("submit", function(e){
//     e.preventDefault()
//     $.ajax({
//       type: "POST",
//       url: this.action,
//       data: $(this).serialize(),
//       success: function(response){
//         //this is where the code shoudl go to make new comment right?
//         $("#comment_content").val("");
//         var $ol = $("div.comments ol")
//         $ol.append(response);
//       }
//     });
//     e.preventDefault();
//   })
// });

$(function() {
  function Comment(data) {
    debugger
    this.id = data.id;
    this.content = data.content;
    this.user= data.user.email;
  }
  
    Comment.prototype.formatComment = function() {
    var html = "<li> <strong> <a href='/users/"+ this.id + "'>" + this.user + "</a> </strong>"+ this.content + "</li>";
    return html;
  }


  $(function(){
    $("#new_comment").on("submit", function(e){
      e.preventDefault()
      $.ajax({
        type: "POST",
        url: this.action,
        data: $(this).serialize(),
        
        success: function(json){
          $("#comment_content").val("");
          var $ol = $("div.comments ol")
          var comment = new Comment(json);
          $ol.append(comment.formatComment())
        }
      });
      e.preventDefault();
    })
  });
})
