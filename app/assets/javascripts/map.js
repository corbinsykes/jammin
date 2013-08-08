window.onload = function(){
  var mapOptions = {zoom: 12,
    center: new google.maps.LatLng(40.699121, -73.911579),
    mapTypeId: google.maps.MapTypeId.ROADMAP};

  var map = new google.maps.Map(document.getElementById("map"),
    mapOptions);
};