# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def seed_rentals
  rentals_list = JSON.parse(File.read('lib/assets/output.json'))

  rentals_list.each do |rental|
    address = rental["address"]
    area = rental["area"]
    bathrooms = rental["bathrooms"]
    bedrooms = rental["bedrooms"]
    price = rental["price"]
    latitude = rental["location"]["latitude"]
    longitude = rental["location"]["longitude"]
    no_smoking = rental["no_smoking"]
    cats_allowed = rental["pets"]["cats_allowed"]
    dogs_allowed = rental["pets"]["dogs_allowed"]
    wheelchair_accessible = rental["wheelchair_accessible"]
    post_id = rental["post_id"]
    post_link = rental["post_link"]
    post_time = rental["post_time"]

    formatted_rentals = { "address" => address,
                          "area" => area,
                          "bathrooms" => bathrooms,
                          "bedrooms" => bedrooms,
                          "price" => price,
                          "latitude" => latitude,
                          "longitude" => longitude,
                          "no_smoking" => latitude,
                          "cats_allowed" => cats_allowed,
                          "dogs_allowed" => dogs_allowed,
                          "wheelchair_accessible" => wheelchair_accessible,
                          "post_id" => post_id,
                          "post_link" => post_link,
                          "post_time" => post_time }

    Rental.create(formatted_rentals)
  end


end

def seed_landlords
  landlord_id = 0
  40.times do 
    Landlord.create(
      name: "test#{landlord_id}",
     )
    landlord_id = landlord_id + 1
  end
end

#seed_rentals
seed_landlords
