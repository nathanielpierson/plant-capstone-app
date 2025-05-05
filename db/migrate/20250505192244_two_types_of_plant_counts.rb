class TwoTypesOfPlantCounts < ActiveRecord::Migration[8.0]
  def change
    add_column :plant_counts, :count_growing, :integer
    rename_column :plant_counts, :count, :count_finished
  end
end
