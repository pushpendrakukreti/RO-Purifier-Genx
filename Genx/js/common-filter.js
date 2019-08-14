

	$(window).scroll(function() {
	if ($(this).scrollTop() > 1){
	$('.navbar').addClass("sticky");
	}
	else{
	$('.navbar').removeClass("sticky");
	}
	});


	function SortProduct(){
	sort_order = $("select#sort_order").val();
	if(sort_order == 'low_to_high'){
	$(".categoryProduct").each(function(){
	$(this).html($(this).children('li').sort(function(a, b){
	return ($(b).data('price')) < ($(a).data('price')) ? 1 : -1;
	}));
	});
	}
	if(sort_order == 'high_to_low'){
	$(".categoryProduct").each(function(){
	$(this).html($(this).children('li').sort(function(a, b){
	return ($(b).data('price')) > ($(a).data('price')) ? 1 : -1;
	}));
	});
	}
	if(sort_order == 'popularity'){
	$(".categoryProduct").each(function(){
	$(this).html($(this).children('li').sort(function(a, b){
	return ($(b).data('position')) < ($(a).data('position')) ? 1 : -1;
	}));
	});
	}
	return;

	}

  function SortProductMobile(){
       var sort_order = $("input[name='optionsRadios']:checked").val();
    if(sort_order == 'low_to_high'){
      $(".categoryProduct").each(function(){
        $(this).html($(this).children('li').sort(function(a, b){
          return ($(b).data('price')) < ($(a).data('price')) ? 1 : -1;
        }
                                                ));
      }
                                );
    }
    if(sort_order == 'high_to_low'){
      $(".categoryProduct").each(function(){
        $(this).html($(this).children('li').sort(function(a, b){
          return ($(b).data('price')) > ($(a).data('price')) ? 1 : -1;
        }
                                                ));
      }
                                );
    }
    if(sort_order == 'popularity'){
      $(".categoryProduct").each(function(){
        $(this).html($(this).children('li').sort(function(a, b){
          return ($(b).data('position')) < ($(a).data('position')) ? 1 : -1;
        }
                                                ));
      }
                                );
    }
     $('.blanket').hide();
   $('.m-sort').hide(); 
    return;
  }
  $("#clear").click(function(){
    location.reload();
  }
                   );
  $('#mob-filter').click(function(){
    var papelh = $(window).height() -1;
      $('#filterFxdMbil').css('display','block');
    $('.m-scroll').css('height', papelh).show();
    $('.panel-group').css('display','block');
    $('.m-prt-show').css('display','block');
    $('.m-sort').css('display','none');
    $('body').css('overflow','hidden');
  }
                        );
  $(".demobutton").click(function() {
    $(".form-hide").toggle("form-show");
    $(".down-arrow").toggleClass("up-arrow");
  }
                        );
  $('.back').click(function(){
    $('.panel-group').css('display','none');
    $('.m-prt-show').css('display','none');
    $('body').css('overflow','auto');
  }
                  );
  $('#mob-sort').click(function(){
    $('#filterFxdMbil').css('display','none');
    $('.panel-group').css('display','block');
    $('.m-scroll').css('display','none');
    $('.blanket').css('display','block');
    $('.m-prt-show').css('display','none');
    $('.m-sort').css('display','block');
  }
                      );
  $(document).on('click', function(e) {
    var t = $(e.target);
    if(!t.closest('.m-filter').length) {
      hideSortpop();
    }
  }
                );
  function hideSortpop() {
  //  $('.blanket').hide();
    //$('.m-sort').hide();
  }
  function clearPoroduct(){
	$("input:radio:first").prop("checked", true);
	SortProductMobile()	
	$('.blanket').hide();
	$('.m-sort').hide();
	
		}