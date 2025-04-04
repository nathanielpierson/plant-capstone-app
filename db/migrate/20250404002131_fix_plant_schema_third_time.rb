class FixPlantSchemaThirdTime < ActiveRecord::Migration[8.0]
  def change
    change_column :plants, :days_to_water, "numeric USING CAST(days_to_water AS numeric)"
    change_column :plants, :days_to_water, :integer
  end
end
