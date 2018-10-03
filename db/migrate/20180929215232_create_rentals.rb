class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      
      #basic information
      t.string :housing_type
      
      t.integer :price
      t.string :address
      t.integer :bedrooms
      t.float :bathrooms
      t.integer :area

      #extra info
      t.boolean :parking, default: false
      t.boolean :laundry, default: false
      t.boolean :dishwasher, default: false
      t.boolean :wheelchair_accessible, default: false
      t.boolean :is_furnished, default: false
      t.boolean :no_smoking, default: false
      t.boolean :cats_allowed, default: false
      t.boolean :dogs_allowed, default: false
      t.boolean :yard, default: false
      
      #geocoding
      t.float :latitude
      t.float :longitude

      #metadata
      t.string :data_source
      
      #web-harvested data
      t.string :post_id
      t.string :post_link
      t.timestamp :post_time

      #user-generated data
      t.belongs_to :landlord, optional: true
      t.belongs_to :user, optional: true

      t.timestamps

    end
  end
end
