module RentalsHelper

	def display_check_or_cross(bool)
		bool ? '<i class="fa fa-check-circle text-success"></i>'.html_safe : '<i class="fa fa-times-circle text-danger"></i>'.html_safe
	end

	def new_landlord_displayer
		user_signed_in? ? 'rentals/rental_form/new_landlord_for_user' : 'rentals/rental_form/new_landlord_for_anon'
	end
end
