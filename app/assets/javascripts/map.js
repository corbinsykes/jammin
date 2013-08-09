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

//Something like:
//var venues = [];
//venues << Venue.all
//for loop thru venues

//take the .address of each venue and run it thru Geocoder
// maybe do this part when you create a venue.
// so maybe migrate your db add lat lng columns
//result = Geocoder.search(Venue.address)
//result[0].data["geometry"]["location"]["lat"]
//result[0].data["geometry"]["location"]["lng"]

