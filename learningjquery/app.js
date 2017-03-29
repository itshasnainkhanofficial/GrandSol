// for viewport https://www.sitepoint.com/scroll-based-animations-jquery-css3/

// var output = document.getElementsByTagName("h3")[0];
// var a = document.getElementsByTagName("ul")[0].innerText;
// output.innerText = a;
// var $list = $("ul").html();
// $("ul").append($list);


// var $list = $("ul").text();
// $("ul").append($list);

// var $list = $("ul").text();
// $("ul").append("<p>" +$list +"</p>");


// var $list = $("li").html();
// $("li").append("<i>"+$list+"</i>");


// var $list = $("li").text();
// $("li").append("<i>"+$list+"</i>");


// $(function(){
//     alert(9)
// });


// $("p").click(function(){
//     $(this).css("background-color","#333");
// })



// $("p").on("click",function(){
//     alert(9)
// });



// $("p").on({
//     mouseenter :function(){
//         $(this).css("background-color","lightgrey")
//     },
//     mouseleave: function(){
//         $(this).css("color","green")
//     },
//     click:function(){
//         $("body").css("background-color","#333")
//     }
// })
// $("button").on("click",function(){
//     $("p").toggle(1000);
// })


// $("button").on("click",function(){
//     $("p").fadeOut();
//     $("h1").fadeOut("slow");
//     $("ul").fadeOut(3000,function(){
//         alert(8)
//     });
// })

// $("button").on("click",function(){
//     $("p").fadeToggle();
//     $("h1").fadeToggle("slow");
//     $("ul").fadeToggle(3000,function(){
//         alert(8)
//     });
// })


// $("button").on("click",function(){
//     $("p").fadeTo(1000,0.5);
//     $("h1").fadeTo("slow",0.3);
//     $("ul").fadeTo("fast",0.7);
// })

// $("button").on("click",function(){
//     $("p").slideUp(1000);
//     $("h1").slideUp("slow");
//     $("ul").slideUp("fast");
// })


// $("button").on("click",function(){
//     $("span").slideToggle(1000);

// })

// $("button").click(function(){
//     $("span").animate({color:"red"},1000);
// })


// $("button").on("click",function(){
//     $("p").css("color","blue");
//     $("p").css("background","red");
//     $("p").css("fontSize","24px");
// })

// $("button").on("click",function(){
//     $("p").css("color","blue").slideUp(1000).css("fontSize","24px");
// })

// Now let's try .text(), html(), val()

// $("button").click(function(){
//     $("p").text("<b>Hasnain Khan</b>");
// })

// $("button").click(function(){
//     $("p").html("<b>Hasnain Khan</b>");
// })
// $("button").click(function(){
//     $("p").text(function(index,old){return "the index number is"+ index + "The old value is"+ old +"The New value is Hasain"});
// })
// $("button").click(function(){
//     $("p").attr("href","www.Google.com")
// })

// to do list

// var ul = $("ul");
// var btn = $("button");
// $(document).ready(function(){



// btn.on("click",function(){
//         var input = $("input")[0].value;
//         ul.prepend("<li>"+input+"<input type='button' id='remove' value='Button'>"+"</li>")
//     })
//     $('#remove').on("click",function(){
//         console.log(9);
//     })

// })




// var button = document.getElementsByTagName("input");
// var li = document.getElementsByTagName("li");
// var ul = document.getElementById("ul");
// for(b = 0 ; b < button.length ; b++){
//     button[b].addEventListener("click",function(){
//        this.parentElement.style.display = "none";
//     })
// }


// $(function(){
//     $("#fast").on("click",function(){
//         $("body").animate({scrollTop:10},"slow");
//         return false;
//     })
// })
$(document).scroll(function(){
    var scrollpositioin = $(this).scrollTop();
    if(scrollpositioin > 1400 ){
        $("ul").addClass("changeit")
        $(".img1").removeClass("imganimation");
    }
    else{
        $("ul").removeClass("changeit");
        $(".img1").addClass("imganimation");
    }

})
$(document).scroll(function(){
    var scrollpositioin = $(this).scrollTop();
    if(scrollpositioin > 1000 && scrollpositioin < 1400 ){
        $("h1").addClass("big")
    }
    else{
        $("h1").removeClass("big");
    }

})

// var $animation_elements = $('.animation-element');
// var $window = $(window);
// $window.on('scroll resize', function(){
//     var window_height = $window.height();
//   var window_top_position = $window.scrollTop();
//   console.log(window_height +" "+window_top_position)
//     console.log("Hasnain")
// });

var $animateElement = $('span');
var $window = $(window);
function ifinview() {
  var $windowheight = $window.height();
  var $toptillscroll = $window.scrollTop();
  var $windowbotttom = ($toptillscroll + $windowheight);

  $.each($animateElement, function() {
    var $element = $(this);
    var $elemntheightbp = $element.outerHeight();
    var $windowtoptillelementtop = $element.offset().top;
    var $elementbottom = ($windowtoptillelementtop + $elemntheightbp);

    if (($elementbottom >= $toptillscroll) &&
        ($windowtoptillelementtop <= $windowbotttom)) {
        $element.addClass('in-view');
    } else {
      $element.removeClass('in-view');
    }
  });
}
$window.on('scroll resize', ifinview);
// $window.trigger('scroll');