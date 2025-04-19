class AddStatusToSchedule < ActiveRecord::Migration[8.0]
  def change
    add_column :schedules, :status, :boolean
  end
end
