  
   
function print_div(print_target){

    var divElements = document.getElementById(print_target).innerHTML;
    newpage_print = window.open('', '_blank' );
    data = "<link rel='stylesheet' href='external.css'>"
    var script = newpage_print.document.createElement('script');
    script.setAttribute('type', 'text/javascript');
    script.innerHTML = "";
    newpage_print.document.body.innerHTML = data + divElements;
    newpage_print.document.body.appendChild(0);    
}

  //  function print_div(divID) {
  //         var div = document.getElementById(divID).outerHTML;
  //         var mywindow = window.open('', 'Print Contents');
  //         mywindow.document.write('<html><head><title>Print Contents</title>');
  //         mywindow.document.write('<style>#red{color:red;}.myDiv {border: 1px dotted black;text-align: center; width: 100%;}.myDiv {border: 1px dotted pink;text-align: right; width: 100%;}</style>');
  //         mywindow.document.write('</head><body>');
  //         mywindow.document.write(div);
  //         mywindow.document.write('</body></html>');
  //         mywindow.document.close();  // necessary for IE >= 10
  //         mywindow.focus();           // necessary for IE >= 10
  //         mywindow.print();
  //         mywindow.close();
  //       }