class Rental < ApplicationRecord
	belongs_to :landlord, optional: true
end
