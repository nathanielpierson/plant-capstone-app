class FixPlantSchema < ActiveRecord::Migration[8.0]
  def change
    change_column :plants, :description, :text
  end
end

# change_column :plants, :amount_of_sun, :integer
# change_column :plants, :days_to_water, :integer
