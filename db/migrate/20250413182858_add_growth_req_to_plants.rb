class AddGrowthReqToPlants < ActiveRecord::Migration[8.0]
  def change
    add_column :plants, :growth_req, :integer
  end
end
