var regexp4contact = /^92[0-9]{10}$/;





function numberlog(){

  var inputVal = document.getElementsByTagName("input")[0].value;
    inputVal = inputVal.split(" ").join("");
    // inputVal = parseInt(inputVal);
      console.log(inputVal.length);
      document.getElementsByTagName("input")[0].value = inputVal;
    if(!regexp4contact.test(inputVal)){
        document.getElementsByTagName("input")[0].focus;
        console.log("Use correct Number");
        return;
    }
    else{
        console.log("Good");
    }
            console.log(inputVal);
            console.log(typeof(inputVal));


}















// for(var a = 0 ; a < inputVal.length ; a++){
//         if(typeof(inputVal.charAt(a)) !== Number){
//             console.log(inputVal[a]+" is not a number");
//         }
//          if(typeof(inputVal.charAt(a)) == Number){
//             console.log(inputVal[a]+" is a number");
//         }
        
//     }