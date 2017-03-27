var img = document.getElementById("img");
img.addEventListener("mouseenter",function(){
    img.style.transform = "scale(1.2,1.2)";
})
img.addEventListener("mouseleave",function(){
    img.style.transform = "scale(1,1)";
})
var p = document.getElementsByTagName("p")[0];
console.log(p);
var a = p.scrollLeft;
console.log(a);
