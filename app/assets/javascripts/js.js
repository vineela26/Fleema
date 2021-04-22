$(".btn-primary").click(function () {
  if ($("button")[0].getAttribute("aria-expanded") == null) {
    $("button").attr("aria-expanded", "false");
  }

  if ($(this).data("closedAll")) {
    $(".accordion .collapse").collapse("show");
    $("button").attr("aria-expanded", "true");
  }
  else {
    $(".accordion .collapse").collapse("hide");
    $("button").attr("aria-expanded", "false");
  }

  // save last state
  $(this).data("closedAll", !$(this).data("closedAll"));
});

// init with all closed
$(".btn-primary").data("closedAll", false);


// bootstrap model-open class add to body 

$('body').on('hidden.bs.modal', function () {
  $('body').addClass('modal-open');


});

$('.modal-header .btn-close').click(function () {
  $("body").addClass("model-test-open");
});

// $(function () {
//   $('#carmodelpopup').load('carmodelpop.html');


// })

//$("#carmodelpopup").load("carmodelpopup.html");
//
// $("#carmodelpopup_two").load("carmodelpopup_two.html");

// $("#footer").load("footer.html");
// $("#header").load("header.html");


// back to top
$(window).scroll(function () {
  if ($(this).scrollTop()) {
    $('#scrollUp').fadeIn();
  } else {
    $('#scrollUp').fadeOut();
  }
});

$("#scrollUp").click(function () {
  //1 second of animation time
  //html works for FFX but not Chrome
  //body works for Chrome but not FFX
  //This strange selector seems to work universally
  // $("html, body").animate({ scrollTop: 0 }, 1000);
});



$('.btnNext').click(function () {
  $('.nav-tabs > .nav-item > .active').parent().next('li').find('a').trigger('click');
});

$('.btnPrevious').click(function () {
  $('.nav-tabs > .nav-item > .active').parent().prev('li').find('a').trigger('click');
});

function setCookie(cname, cvalue, exdays) {
  var d = new Date();
  d.setTime(d.getTime() + (exdays*24*60*60*1000));
  var expires = "expires="+ d.toUTCString();
  document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

function getCookie(cname) {
  var name = cname + "=";
  var decodedCookie = decodeURIComponent(document.cookie);
  var ca = decodedCookie.split(';');
  for(var i = 0; i <ca.length; i++) {
    var c = ca[i];
    while (c.charAt(0) == ' ') {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return c.substring(name.length, c.length);
    }
  }
  return "";
}

function deleteCookie(cname, exdays) {
  var expires = "expires=Thu, 01 Jan 1970 00:00:00 UTC";
  document.cookie = cname + "=;" + expires + ";path=/";
}
