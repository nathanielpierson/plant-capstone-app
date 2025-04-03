class CreatePlants < ActiveRecord::Migration[8.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :description
      t.string :amount_of_sun
      t.string :days_to_water

      t.timestamps
    end
  end
end
