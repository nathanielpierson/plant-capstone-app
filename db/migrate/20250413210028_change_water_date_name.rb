class ChangeWaterDateName < ActiveRecord::Migration[8.0]
  def change
    rename_column :schedules, :watering_start_date, :last_watered_date
  end
end
