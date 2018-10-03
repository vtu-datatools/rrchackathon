class RentalsController < ApplicationController
  before_action :get_landlord, only: [:create]
  def index
    @rentals = Rental.all
  end

  def map
    @rentals = Rental.all
  end

  def show
    @rentals = Rental.all
    @rental = Rental.find(params[:id])

  end

  def new
  	@rental = Rental.new
  	@landlords = Landlord.all
  	
  end

  def create
  	if params[:declare] == "1"
	  	@rental = Rental.new
		@rental.data_source = "USER_INPUT"
	  	@rental.address = params[:address]
	  	@rental.area = params[:area]
	  	@rental.bathrooms = params[:bathrooms]
	  	@rental.bedrooms = params[:bedrooms]
	  	@rental.price = params[:price]
	  	
	  	@rental.parking = params[:parking].present? ? true : false
	  	@rental.laundry = params[:laundry].present? ? true : false
	  	@rental.dishwasher = params[:dishwasher].present? ? true : false
	  	@rental.wheelchair_accessible = params[:wheelchair_accessible].present? ? true : false
	  	@rental.is_furnished = params[:is_furnished].present? ? true : false
	  	@rental.no_smoking = params[:no_smoking].present? ? true : false
	  	@rental.cats_allowed = params[:cats_allowed].present? ? true : false
	  	@rental.dogs_allowed = params[:dogs_allowed].present? ? true : false
	  	@rental.yard = params[:yard].present? ? true : false

	  	if @landlord_id != ""
	  		@rental.landlord_id = @landlord_id
	  	end

	  	if user_signed_in?
	  		@rental.user_id = current_user.id
	  	end
	  	
	  	if @rental.save
	  		flash[:notice] = "Information was saved successfully."
	  		redirect_to root_path
	  	end
  	else
  		flash[:alert] = "Must declare that the information is accurate"
  		redirect_to new_rental_path(
  			address: params[:address],
	  		area: params[:area],
	  		bathrooms: params[:bathrooms],
	  		bedrooms: params[:bedrooms],
	  		price: params[:price]
  			)
  	end
  	

  end


  private

  	def get_landlord
  		@landlord_id = ""
  		if params[:old_landlord_id].present?
	  		@landlord_id = params[:old_landlord_id]
		end
		if params[:new_landlord].present?
	  		landlord = Landlord.new
	  		landlord.name = params[:new_landlord]
	  		landlord.save
	  		@landlord_id = landlord.id		
		end

	end

end
