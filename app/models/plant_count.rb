class PlantCount < ApplicationRecord
  def index
    Plant_count.all
    render :index
  end
  def update
    @plant_count = Plant_count.find_by(id: params[:id])
    @plant_count.update (

    )
  end
end
