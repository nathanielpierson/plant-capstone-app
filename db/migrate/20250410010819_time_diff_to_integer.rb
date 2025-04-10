class TimeDiffToInteger < ActiveRecord::Migration[8.0]
  def change
    add_column :schedules, :time_changed, :integer
  end
end
