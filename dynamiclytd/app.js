
function addorder(){
   // get all values from input fields
    var notes = document.getElementById("notes").value;
    var qty = document.getElementById("qty").value;
    var rate = document.getElementById("rate").value;
    var amount = document.getElementById("amount").value;
    // creating on Element

    var tr = document.createElement("tr");
    var table = document.getElementById("dynamictable");
    var select = document.createElement("select");
    var td = document.createElement("td");
    for(var b = 0; b < 4 ; b++){
        var option = document.createElement("option");
        var optionText = document.createTextNode(notes)
            option.appendChild(optionText);
            select.appendChild(option);
    }
    tr.appendChild(td).appendChild(select);
    //For text fields creating n number of td and input fields
    
    for(var a = 0 ; a <= 2  ; a++){
        var td = document.createElement("td");
        var input = document.createElement("input");
        var inputAtt = document.createAttribute("type");
        inputAtt.value = "text";
        input.setAttributeNode(inputAtt);
        var inputAtt2 = document.createAttribute("value");

        if(a == 0 ){
            inputAtt2.value = qty;
        }
        if(a == 1 ){
            inputAtt2.value = rate;
        }
        if(a == 2 ){
            inputAtt2.value = amount;
        }
        input.setAttributeNode(inputAtt2);
        td.appendChild(input);
        tr.appendChild(td);
    }
    var span = document.createElement("span");
    var spanClass = document.createAttribute("class");
    spanClass.value = "fa fa-minus";
    span.setAttributeNode(spanClass);

    var spanEvent = document.createAttribute("onClick");
    spanEvent.value = "deleteit(this)";
    span.setAttributeNode(spanEvent);
    var td = document.createElement("td");
    tr.appendChild(td).appendChild(span);
    
    table.appendChild(tr);
}

function deleteit(el){
   el.parentElement.parentElement.remove();
}
