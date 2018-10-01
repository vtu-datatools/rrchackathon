class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.string :address
      t.integer :area
      t.float :bathrooms
      t.integer :bedrooms
      t.integer :price

      t.float :latitude
      t.float :longitude

      t.boolean :no_smoking
      t.boolean :cats_allowed
      t.boolean :dogs_allowed
      t.boolean :wheelchair_accessible

      t.string :post_id
      t.string :post_link
      t.timestamp :post_time

      t.belongs_to :landlord, index: true

      #t.string :housing_type
      #t.boolean :is_furnished
      #t.boolean :laundry
      #t.boolean :parking

      t.timestamps
    end
  end
end
