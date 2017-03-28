
$(window).scroll(function(){
if($(this).scrollTop() > "300"){
    $(".navbar-fixed-top").css({"background-color":"#fff","transition":"0.5s"})
}
else{
    $(".navbar-fixed-top").css({"background-color":"transparent","transition":"0.5s"})
}
})
