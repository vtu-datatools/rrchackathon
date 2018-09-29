class LandlordsController < ApplicationController
    def index
        @landlords = Landlord.all
    end
end
