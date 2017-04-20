//regular Expressions....
// var regexp4cnic = /^[0-9]{13}$/;
// var regexp4contact = /^[0-9]{11,20}$/;
// var regexp4date = /^[0-9]{4}\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])/;
// var regexp4contact2 = /^\+92[0-9]{3}\-[0-9]{7}$/;
// var regexp4phone = /^021-[0-9]{8}$/
// var regexp4date = /^(0[1-9]|1[012])\/(0[1-9]|[12][0-9]|3[01])\/[0-9]{4}$/;
// var regexp4cnic = /^[0-9]{5}\-[0-9]{7}\-[0-9]{1}$/;
// var regexp4contact = /^[0-9]{11}$/
// var regexp4fee = /^[0-9]+$/;
// var regexp4fax = /^\+?[0-9]{6,}$/;
// var regexp4normalpassowrd = /^[\w\d]+$/;
// var regexp4name = /^[A-Za-z ]{3,50}$/;
// var regexp4city = /^[A-Za-z ]{4,50}$/;
// var regexp4alphanumeric = /^[A-Za-z\d\s ]*$/;
// var regexp4address = /^[A-Za-z]+[0-9 _\-.,]*$/;
// var regexp4skype = /^[a-zA-Z][a-zA-Z0-9\.,\-_]{5,31}$/;
// var regexp4id = /^[0-9\b]+$/;
// var regexp4email = /^\s*[\w\-\+_]+(\.[\w\-\+_]+)*\@[\w\-\+_]+\.[\w\-\+_]+(\.[\w\-\+_]+)*\s*$/;
// var regexp4textarea = /^[A-Za-z ]{20,200}$/;


var enter = document.getElementById("enter");
var match = document.getElementById("matched");
var noMatch = document.getElementById("notmatched");


function xyz(){
    var inputVal = document.getElementsByTagName("input")[0].value;
    var textareaVal  = eval(document.getElementsByTagName("textarea")[0].value);
        if(textareaVal.test(inputVal)){
        match.style.display = "block";
        noMatch.style.display = "none";
     }
        else{
             match.style.display = "none";
         noMatch.style.display = "block";
    }
}
// if (event.keyCode == 13) {
//         document.getElementById("enter").click();
//     }
//  function handle(e){
//         if(e.keyCode === 13){
//             e.preventDefault(); // Ensure it is only this code that rusn

//             alert("Enter was pressed was presses");
//         }
//     }