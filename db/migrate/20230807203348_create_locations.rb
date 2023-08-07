class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :location_name
      t.integer :zipcode
      t.string :menu
      t.timestamps
    end
  end
end
