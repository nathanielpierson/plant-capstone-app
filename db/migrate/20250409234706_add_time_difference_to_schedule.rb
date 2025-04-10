class AddTimeDifferenceToSchedule < ActiveRecord::Migration[8.0]
  def change
    add_column :schedules, :time_difference, :date
  end
end
