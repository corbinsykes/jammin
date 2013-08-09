var map;

window.onload = function(){

  var mapOptions = {
    center: new google.maps.LatLng(40.70771, -73.940398),
    zoom: 13,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  map = new google.maps.Map(document.getElementById("map"),
    mapOptions);

  var markerOptions = {
    position: new google.maps.LatLng(40.70771, -73.940398),
    visible: true
  };
  var marker = new google.maps.Marker(markerOptions);
  marker.setMap(map);
};

function addMarkers(venues){
  for (var i = 0; i < max; i++){
    var markerOptions = {
      position: new google.maps.LatLng(40.70771, -73.940398),
      visible: true
    };
    var marker = new google.maps.Marker(markerOptions);
      marker.setMap(map);
  }
}


