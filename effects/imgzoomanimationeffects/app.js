


var img = document.getElementsByTagName("img")[0];
var count = 1;
function slider(){
    count++;
    if(count > 4){
        count = 1;
    }
    img.src = "img/slide"+count+".jpg";
    img.classList.add("zoom");
    console.log("class added");
}
setInterval("slider()",5000);
function removeclass(){
    img.classList.remove("zoom");
    console.log("class removed");
}


setInterval("removeclass()",6000);