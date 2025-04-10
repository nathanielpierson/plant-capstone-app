class RemoveTimeDifference < ActiveRecord::Migration[8.0]
  def change
    remove_column :schedules, :time_difference, :date
  end
end
