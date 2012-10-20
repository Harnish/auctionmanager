// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
jQuery(function($) {
  // when the #auction field changes
  $("#auction_select_id").change(function() {
    // make a POST call and replace the content
    var auction = $('select#auction_select_id :selected').val();
    if(auction == "") auction="0";
    jQuery.get('/auction/update_auction_session/' + auction, function(data){
       // $("#addressStates").html(data);
    })
    return false;
  });

})
