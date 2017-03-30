var match = document.getElementById("matched");
var noMatch = document.getElementById("notmatched");
var btn = document.getElementsByTagName("input")[1];



function xyz(){
    var inputVal = document.getElementsByTagName("input")[0].value;
    var textareaVal  = eval(document.getElementsByTagName("textarea")[0].value);
        if(textareaVal.test(inputVal)){
        match.style.display = "block";
     }
        else{
         noMatch.style.display = "block";
    }
}

// var nameptt = /^[a-zA-Z\s]+$/;
// if(!nameptt.test(nameVal)){
//     alert("write correct name");
//     return false;
// }
// if(nameVal.length > 15 || nameVal.length < 5){
//     alert("Your name characters must be within 5 to 15 characters");
//     return false;
// }