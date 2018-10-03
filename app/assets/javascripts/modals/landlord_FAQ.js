$(document).on('turbolinks:load', function() {
	$("body").on("click", "#landlord_FAQ", function(event) {
      event.preventDefault();
      $('.landlord_FAQ').modal('show');
    });
});