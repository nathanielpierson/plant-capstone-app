class PlantCountsToIntegers < ActiveRecord::Migration[8.0]
  def change
    change_column :plant_counts, :plant_id, 'integer USING CAST(plant_id AS integer)'
    change_column :plant_counts, :user_id, 'integer USING CAST(user_id AS integer)'
    change_column :plant_counts, :count, 'integer USING CAST(count AS integer)'
  end
end
