var createMap = function(lat, lon) {
  var mapOptions = {
    center: new google.maps.LatLng(lat,lon),
    zoom: 13,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  return new google.maps.Map($("#map")[0],mapOptions);
};


var createVenueMarker = function(map, lat, lon, name) {
  var markerOptions = {
    position: new google.maps.LatLng(lat, lon),
    visible: true,
    clickable: true
  };

  var marker = new google.maps.Marker(markerOptions);
  marker.setMap(map);
  marker.setTitle(name);
  google.maps.event.addListener(marker,'click',function(){
    console.log("i've been clicked");
    window.location.href = '/jams/start';
  });
};

// marker.click(function(){
// var hotText = marker.setTitle(name)
// var URL = "/jams/start"

// document.write(hotText.link(URL));
// }
//


