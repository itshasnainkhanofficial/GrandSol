<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>AJAX with JavaScript</title>
  <link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="css/main.css">
  <script>
  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById('ajax').innerHTML = xhr.responseText;
    }
  };
  xhr.open('GET', '');

  function sendAJAX() {
    xhr.send( );
    document.getElementById('load').style.display = 'none';
  }
  </script>
</head>
<body>
  <div class="grid-container centered">
    <div class="grid-100">
      <div class="contained">
        <div class="grid-100">
          <div class="heading">
            <h1>Bring on the AJAX</h1>
          </div>
          <button id="load" onclick="sendAJAX()" class="button">Bring it!</button>
          <div id="ajax">

          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>