// to learn redgex visit
// http://regexr.com/
// http://eloquentjavascript.net/09_regexp.html



// redgex pattern started

var nameptt = /^[a-zA-Z\s]+$/;
var emailpattrn =  /^[\w\d\-]+\@[a-z]{3,6}\.[a-z]{3,5}$/
var nicpatt = /^[0-9]{5}\-[0-9]{7}\-[0-9]{1}$/;
var contactpatt = /^\+92[0-9]{3}\-[0-9]{7}$/;

// redgex pattern ended



function validateForm(){
var nameVal = document.getElementById("name").value;
var fnameVal = document.getElementById("fname").value;
var emailVal = document.getElementById("email").value;
var contactVal = document.getElementById("contact").value;
var nicVal = document.getElementById("nic").value;
var passwordVal = document.getElementById("password").value;
var male = document.getElementById("male");
var female = document.getElementById("femail");
if(nameVal == "" && fnameVal == "" && emailVal == "" && contactVal == "" && nicVal == ""&& passwordVal == ""){
    alert("all fields must be filled out");
    return false;
}
// name validation
if(nameVal == ""){
    alert("name field can not be empty");
    return false;
}
if(!nameptt.test(nameVal)){
    alert("write correct name");
    return false;
}
if(nameVal.length > 15 || nameVal.length < 5){
    alert("Your name characters must be within 5 to 15 characters");
    return false;
}
// father name validation

if(fnameVal == ""){
    alert("father name field can not be empty");
    return false;
}
if(!nameptt.test(fnameVal)){
    alert("write correct fathername");
    return false;
}
if(fnameVal.length > 15 || fnameVal.length < 5){
    alert("Your father name characters must be within 5 to 15 characters");
    return false;
}

// email validation
if(emailVal == ""){
    alert("email field can not be empty");
    return false;
}
if(!emailpattrn.test(emailVal)){
     alert("write correct email");
     return false;
}
// contact validation
if(contactVal == ""){
    alert("contact field can not be empty");
    return false;
}
if(!contactpatt.test(contactVal)){
    alert("Write correct contact number i.e +923312189275");
    return false
}

// N.I.C validation
if(nicVal == ""){
    alert("N.I.C field can not be empty");
    return false;
}
if(!nicpatt.test(nicVal)){
    alert("Please write correct Nic number i.e 12345-1234567-1");
    return false;
}
// password validation
if(passwordVal == ""){
    alert("password field can not be empty");
    return false;
}
if(passwordVal.length > 15 || passwordVal.length < 5){
    alert("password characters within 5 to 15 characters");
    return false;
}
// radio btn validation
if((male.checked == false) && (femail.checked == false)){
    alert("please select a gender")
    return false;
}
return true
}
