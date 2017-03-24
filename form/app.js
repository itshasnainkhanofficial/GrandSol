
var nameptt = /^[a-zA-Z\s]+$/;
var emailpattrn =  /[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/;
var nicpatt = /^[0-9]{,5}+-+[0-9]{,7}+-+[0-9]{,1}$/;

var submit = document.getElementById("submit");


submit.addEventListener("click",function(){
var contactpatt = /[0-9]+-+[0-9]$/;
var contact = document.getElementById("contact").value;
if(contactpatt.test(contact)){
    // alert("okay");
}
else{
    // alert("somthing bad");
}

var nic = document.getElementById("nic");
var nicVal = nic.value;
if(!nicpatt.test(nicVal)){
   
    alert("Please write correct Nic number")
}
var password = document.getElementById("password");
var passVal = password.value;

// father name validation
var fname = document.getElementById("fname");
var fnameVal = fname.value;
if(!nameptt.test(fnameVal)){
    // alert("write correct fathername")
}
// name validation
var name = document.getElementById("name");
var  nameVal = name.value;
if(!nameptt.test(nameVal)){
    // alert("write correct name")
}
// email validation
var email = document.getElementById("email");
var emailVal = email.value;
if(!emailpattrn.test(emailVal)){
    //  alert("write correct email")
}

//        if(!isNaN(nameVal) ||  nameVal == ""){
//          alert("please write correct name");
//      }
//       if(nameVal.length > 15|| nameVal.length < 5){
//              alert("name must be within 5 to 15 characters")
//        }
//        if(!isNaN(fnameVal) ||  fnameVal == ""){
//             alert("please write correct your correct father name");
//       }
//       if(fnameVal.length > 15|| fnameVal.length < 5){
//          alert("your father name must be within 5 to 15 characters")
//         }
//     if(contactVal[0] !== "+"){
//         alert("Please write + before your number")
//     }
//         if(contactVal[1] !== "9" ){
//         alert("Please write 9 before your number")
//     }
//          if(contactVal[2] !== "2" ){
//         alert("Please write 2 with your number")
//     }
//         if(contactVal[6] !== "-" ){
//         alert("Please write - with your number")
//     }
//     if(contactVal == ""){
//         alert("Blank feild for contact is not acceptable")
//     }
//     if(contactVal.length < 14 || contactVal.length > 14){
//         alert("write your correct number upto 14 characters")
//     }
//     if(nicVal == ""){
//          alert("Blank feild for email is not acceptable")
//     }
//     if(nicVal.length > 15 || nicVal.length < 15){
//          alert("your NIC must contain 15 characters including two -")
//     }
//     if(nicVal[5] !== "-"){
//         alert("please write - at 6th position")
//     }
//     if(nicVal[13] !== "-"){
//         alert("please write - at 14th position")
//     }
//     if(emailVal == ""){
//         alert("Email field should not be empty");
       
//     }


//     var atthe = emailVal.indexOf("@");


//     if(atthe == -1 ){
//         alert("please write @");
       
//     }


//     var dot = emailVal.indexOf(".");



//     if(dot == -1){
//         alert("please write .");
       
//     }
//     if(emailVal.indexOf("@") > emailVal.indexOf(".")){
//         alert("please write @ before .");
       
//     }
//     if(passVal.length < 5 || passVal.length > 15){
//         alert("password should be within 5 to 15 characters")
//     }
//     if(passVal == ""){
//         alert("password feild should not be empty")
//     }
    
   
}

)
//  var matchit = /abc/;
//     var a = "abdcd";
//     if(matchit.test(a)) {
//         console.log("true");
//     }
//     else{
//         console.log("False")
//     }
//  var matchit = /[0-9]/;
//     var a = "asdf0";
//     if(matchit.test(a)) {
//         console.log("true");
//     }
//     else{
//         console.log("False")
//     }

// var matchit =  /[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/
//     var a = "hasnainkhankqs@gmail.com";
//     if(matchit.test(a)) {
//         console.log("true");
//     }
//     else{
//         console.log("False")
//     }
// http://eloquentjavascript.net/09_regexp.html

