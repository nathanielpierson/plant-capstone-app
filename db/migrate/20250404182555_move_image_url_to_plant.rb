class MoveImageUrlToPlant < ActiveRecord::Migration[8.0]
  def change
    add_column :plants, :image_url, :string
    remove_column :schedules, :image_url, :string
  end
end
