$(window).scroll(function() {
   if ($(this).scrollTop() > 1) {
	   $('.navbar').addClass("sticky ");
   } else {
	   $('.navbar').removeClass("sticky ");
   }
});

$(".can").on('click', function(){
    $('.demo-form-bg').hide();
});

$(".demobutton").click(function() {
               $(".form-hide").toggle("form-show");
               $(".down-arrow").toggleClass("up-arrow")

           });

$('.popup-blk .deleteMeetingClose').click(function () {
  $('.popup-cont').hide();
});


$(".dealer-pop").on('click', function(){
    $(".popup-cont").fadeIn()
                    .find(".tablinks")
                    .first()
                    .trigger('click')
});

$(document).on('click', function(e) {
    console.log($(e.target));
    if(!$(e.target).closest('.popup-blk').length && !$(e.target).closest('.dealer-pop').length) {
        $(".popup-cont").hide();

    }
});



/**************************/
var video_id = "";
$('.play-icon').click(function(){
	  video_id = $(this).attr('href');
});


$('.close').on('click',function(){
 //$(video_id).find('iframe').attr('src', $('iframe').attr('src'));
 $(video_id).find('iframe').attr('src',$(video_id).find('iframe').attr('src')); 
 //video_id="";
})

/**************************/



  $('.modal-body #flow').on('click', function(){
    $('#myModal_flow').modal('toggle');

  });

  $('.modal-body #prod ').on('click', function(){
    $('#myModal_prod').modal('toggle');

  });

  $('.modal-body #video ').on('click', function(){
    $('#myModal_video').modal('toggle');

  });
