var createMap = function(lat, lon) {
  var mapOptions = {
    center: new google.maps.LatLng(lat, lon),
    zoom: 13,
    mapTypeId: google.maps.MapTypeId.ROADMAP};

  return new google.maps.Map(document.getElementById("map"),
    mapOptions);
};

var createVenueMarker = function(map, lat, lon, name) {
  var markerOptions = {
    position: new google.maps.LatLng(lat, lon),
    visible: true
  };

  var marker = new google.maps.Marker(markerOptions);

  marker.setMap(map);
  marker.setTitle(name);
};

// $(document).ready(function(){

//   var mapOptions = {
//     center: new google.maps.LatLng(40.70771, -73.940398),
//     zoom: 13,
//     mapTypeId: google.maps.MapTypeId.ROADMAP};

//   var map = new google.maps.Map(document.getElementById("map"),
//     mapOptions);

//   var markerOptions = {
//     position: new google.maps.LatLng(40.70771, -73.940398),
//     visible: true
//   };

//   var marker = new google.maps.Marker(markerOptions);

//   marker.setMap(map);
// });
