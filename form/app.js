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


// name validation
var nameVal = document.getElementById("name").value;
if(!nameptt.test(nameVal) || nameVal == ""){
    alert("write correct name");
    return false
}
// father name validation
    var fnameVal = document.getElementById("fname").value;
    if(!nameptt.test(fnameVal) ||fnameVal == ""){
    alert("write correct fathername");
    return false
}


// email validation

    var emailVal = document.getElementById("email").value;
    if(!emailpattrn.test(emailVal)){
     alert("write correct email");
     return false
}
// contact validation
    var contactVal = document.getElementById("contact").value;
    if(!contactpatt.test(contactVal)){
    alert("Write correct contact number i.e +923312189275");
    return false
}

// N.I.C validation
    var nicVal = document.getElementById("nic").value;
    if(!nicpatt.test(nicVal)){
    alert("Please write correct Nic number i.e 12345-1234567-1");
    return false
}
// password validation
var passwordVal = document.getElementById("password").value;
if(passwordVal.length > 15 || passwordVal.length < 5){
    alert("password characters within 5 to 15 characters");
    return false
}
// radio btn validation
var male = document.getElementById("male");
var female = document.getElementById("femail");
if((male.checked == false) && (femail.checked == false)){
    alert("please select a gender")
    return false
}
return true
}
