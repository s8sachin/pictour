$(document).on('click', '.posts_panel', function(){
  var id = $(this).attr('value');
  $.ajax({
    type: "GET",
    url: "/posts/"+id,
    dataType: "script"
  });
});

$(document).on({
    mouseenter: function () {
      $(this).children().find('.delete_post_btn').show();
    },
    mouseleave: function () {
      $(this).children().find('.delete_post_btn').hide();
    }
}, '.post');

$(document).on('click', '.delete_post_btn', function(){
  debugger
  var id = $(this).attr('value');
  $.ajax({
    type: "GET",
    url: "/confirm_delete?id="+id,
    dataType: "script"
  });
});