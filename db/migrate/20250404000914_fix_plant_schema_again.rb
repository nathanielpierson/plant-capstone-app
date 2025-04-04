class FixPlantSchemaAgain < ActiveRecord::Migration[8.0]
  def change
    change_column :plants, :amount_of_sun, "numeric USING CAST(amount_of_sun AS numeric)"
    change_column :plants, :amount_of_sun, :integer
  end
end
