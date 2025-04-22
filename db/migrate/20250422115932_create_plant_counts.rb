class CreatePlantCounts < ActiveRecord::Migration[8.0]
  def change
    create_table :plant_counts do |t|
      t.string :plant_id
      t.string :user_id
      t.string :count

      t.timestamps
    end
  end
end
