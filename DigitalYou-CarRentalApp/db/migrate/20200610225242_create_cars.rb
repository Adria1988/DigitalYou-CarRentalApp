class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :image
      t.string :type_options
      t.float :price_hour
      t.integer :doors
      t.string :gearshift
      t.boolean :AC
      t.integer :luggage
      t.string :pick_up_location

      t.timestamps
    end
  end
end
