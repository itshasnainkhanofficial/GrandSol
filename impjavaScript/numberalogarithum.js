var regexp4contact = /^92[0-9]{10}$/;





function numberlog(){

  var inputVal = document.getElementsByTagName("input")[0].value;
    inputVal = inputVal.split(" ").join("");
    // inputVal = parseInt(inputVal);
    //   console.log(inputVal.length);
      document.getElementsByTagName("input")[0].value = inputVal;

    if(inputVal.length > 12){
        // console.log("greater length");
        if(inputVal[12] !== ","){
            console.log("Use , after 12 digits");
            document.getElementsByTagName("input")[0].focus;
        }
    }
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


//  for (var i = 0; i < text.length; i++) {
//  if (text.slice(i, i + 12) === "World War II") {
// text = text.slice(0, 1) + "the Second World War" + text.slice(i + 12);
//  }
//  }








    // if(!regexp4contact.test(inputVal)){
    //     document.getElementsByTagName("input")[0].focus;
    //     console.log("Use correct Number");
    //     return;
    // }



// for(var a = 0 ; a < inputVal.length ; a++){
//         if(typeof(inputVal.charAt(a)) !== Number){
//             console.log(inputVal[a]+" is not a number");
//         }
//          if(typeof(inputVal.charAt(a)) == Number){
//             console.log(inputVal[a]+" is a number");
//         }
        
//     }