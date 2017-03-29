
$(window).scroll(function(){
if($(this).scrollTop() > "300"){
    $(".navbar-fixed-top").css({"background-color":"#fff","transition":"0.5s"})
}
else{
    $(".navbar-fixed-top").css({"background-color":"transparent","transition":"0.5s"})
}
})
// animation on text
var $txt = $(".animatetxt");
var $window = $(window);
function animatetext(){
    var $windowheight = $window.height();
    var $toptillscroll = $window.scrollTop();
    var $windowbottom = ($windowheight+$toptillscroll);
    $.each($txt,function(){
        var $thisimg = $(this);
        var $elementheightbp = $thisimg.outerHeight();
        var $toptillscrollelement = $thisimg.offset().top;
        var $elementbottom = ($elementheightbp+$toptillscrollelement);
        if(($elementbottom >= $toptillscroll)&&($toptillscrollelement <= $windowbottom)){
           $thisimg.addClass(" effect");
        }
        else{
            $thisimg.removeClass("effect");
        }
    })
}
$window.on('scroll resize', animatetext);
