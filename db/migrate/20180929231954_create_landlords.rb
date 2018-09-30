class CreateLandlords < ActiveRecord::Migration[5.2]
  def change
    create_table :landlords do |t|
      t.string :name
      t.timestamps
      t.has_many :rentals
    end
  end
end
