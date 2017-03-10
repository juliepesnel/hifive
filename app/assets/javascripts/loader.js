$( ".selectable_restaurants" ).hide();
$( ".loader" ).hide();



$( ".myflextest input" ).click(function() {
  $( ".loader" ).show();
  $( ".selectable_restaurants" ).hide();
  setTimeout(function() {
   $('.loader').fadeOut('fast');
   $('.selectable_restaurants').fadeIn('fast');
  }, 1500);
});
