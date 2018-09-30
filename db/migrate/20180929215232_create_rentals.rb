class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.string :address, default: "unknown"
      t.integer :area, default: "unknown"
      t.float :bathrooms, default: "unknown"
      t.integer :bedrooms, default: "unknown"
      t.integer :price, default: "unknown"

      t.float :latitude, default: "unknown"
      t.float :longitude, default: "unknown"

      t.boolean :no_smoking, default: "unknown"
      t.boolean :cats_allowed, default: "unknown"
      t.boolean :dogs_allowed, default: "unknown"
      t.boolean :wheelchair_accessible, default: "unknown"

      t.string :post_id, default: "unknown"
      t.string :post_link, default: "unknown"
      t.timestamp :post_time, default: "unknown"

      t.belongs_to :landlord, index: true

      #t.string :housing_type
      #t.boolean :is_furnished
      #t.boolean :laundry
      #t.boolean :parking

      t.timestamps
    end
  end
end
