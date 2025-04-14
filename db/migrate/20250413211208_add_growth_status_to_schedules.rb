class AddGrowthStatusToSchedules < ActiveRecord::Migration[8.0]
  def change
    add_column :schedules, :growth_status, :integer
  end
end
