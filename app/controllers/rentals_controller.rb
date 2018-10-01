class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def new
  	@rental = Rental.new
  	@landlords = Landlord.all
  	
  end

  def create
  	@rental = Rental.new(rental_params)

  	

  end


  private

  	def rental_params
  		if params[:old_landlord_id].present?
	  		params[:landlord_id] = params[:old_landlord_id]
		end
		if params[:new_landlord].present?
	  		params[:landlord_id] = params[:new_landlord]		
		end
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
