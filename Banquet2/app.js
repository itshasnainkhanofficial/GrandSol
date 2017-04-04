// toggle navigation

var togglebtn = document.getElementById("toggle");


// slider animation start
var img = document.getElementById("slider").style;
var count = 1;
function slidering(){
    count++;
    if(count > 4){
        count = 1;
    }
    img.backgroundImage = "url(img/slider"+count+".jpg"+")";
    if(count === 1){
        document.getElementById("changeabletxt").innerHTML = "<span>We Create</span><br/> You<br/> Celebrate"
    }
        if(count === 2){
        document.getElementById("changeabletxt").innerHTML = "<span>We Make</span><br/> You<br/> Special"
    }
        if(count === 3){
        document.getElementById("changeabletxt").innerHTML = "<span>We Relize</span><br/> You <br/> Comfortable"
    }
        if(count === 4){
        document.getElementById("changeabletxt").innerHTML = "<span>We Wish</span><br/> You<br/> Best"
    }

    console.log("image changed");
}
setInterval("slidering()",10000);

// map start
function initMap() {
        var uluru = {lat: -2.363, lng: 11.044};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }


                            /*<span>We create</span>
                            <br/> you
                            <br /> celebrate
                        </div>
                        <p>
                            Planning a Wedding, Proposal, or Event in our busy city is not so easy,<br>and it takes skills
                            (and time) to make it all look easy-going
                        </p>*/