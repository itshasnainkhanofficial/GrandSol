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