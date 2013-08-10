var createMap = function(lat, lon) {
  var mapOptions = {
    center: new google.maps.LatLng(lat,lon),
    zoom: 13,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  return new google.maps.Map($("#map")[0],mapOptions);
};


var createVenueMarker = function(map, venue) {
  var markerOptions = {
    position: new google.maps.LatLng(venue.latitude, venue.longitude),
    visible: true,
    clickable: true
  };

  var marker = new google.maps.Marker(markerOptions);
  marker.setMap(map);
  marker.setTitle(venue.name);
  google.maps.event.addListener(marker,'click',function(){
    console.log(venue.creator_id);
    createOrJoinJamSession(venue, marker);
    // window.location.href = '/jams/start';
  });
};

function createOrJoinJamSession(venue, marker){
  if(Jammin.currentUser.id === venue.creator_id) {
    createJamSession(venue, marker);
  } else {
    joinJamSession(venue, marker);
  }
}

function createJamSession(venue, marker){
  $('#create-jam-session').modal({
    remote: '/jams/start'
  });
}

function joinJamSession(venue, marker){
  $('#join-jam-session').modal({
    remote: '/jams/join?venue_id=' + venue.id
  });
}
// marker.click(function(){
// var hotText = marker.setTitle(name)
// var URL = "/jams/start"

// document.write(hotText.link(URL));
// }
//


