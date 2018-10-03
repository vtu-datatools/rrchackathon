$(document).on('turbolinks:load', function() {
	$("body").on("click", "#address_FAQ", function(event) {
      event.preventDefault();
      $('.address_FAQ').modal('show');
    });
});