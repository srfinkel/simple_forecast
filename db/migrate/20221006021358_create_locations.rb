class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address, null: false
      t.string :latitude, null: false
      t.string :longitude, null: false

      t.timestamps
    end
  end
end
