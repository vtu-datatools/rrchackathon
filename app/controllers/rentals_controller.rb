class RentalsController < ApplicationController
  def index
    @rentals = Rental.all

    
  end
end
