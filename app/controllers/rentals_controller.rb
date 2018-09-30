class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def new
  	@rental = Rental.new
  	
  end

  def create
  	@rental = Rental.new(rental_params)

  	if @rental.save
  		redirect_to rentals_path
  	else
  		redirect_to new_rental_path
  	end

  end


  private

  	def rental_params
		params.require(:rental).permit( :address,
		 								:area, 
		  								:bathrooms, 
		  								:bedrooms, 
		  								:price, 
		  								:latitude, 
		  								:longitude,
		  								:no_smoking, 
		  								:cats_allowed, 
		  								:dogs_allowed, 
		  								:wheelchair_accessible, 
		  								:post_id, 
		  								:post_link, 
		  								:post_time, 
		  								:landlord_id
		  							)
	end

end
