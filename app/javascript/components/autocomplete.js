function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var bikeAddress = document.getElementById('bike_address');

    if (bikeAddress) {
      var autocomplete = new google.maps.places.Autocomplete(bikeAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(bikeAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
