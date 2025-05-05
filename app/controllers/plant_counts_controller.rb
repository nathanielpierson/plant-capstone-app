class PlantCountsController < ApplicationController
  def index
    @plant_counts = PlantCount.all
    render :index
  end
  def update
    @plant_count = PlantCount.find_by(id: params[:id])
    # finds every instance of a schedule for this plant that is under the current user, i.e. all of current user's planted cabbages
    plant = Schedule.where(plant_id: @plant_count.plant_id, user_id: current_user, status: true)
    x = plant.length
    @plant_count.update(
      user_id: params[:user_id] || @plant_count.user_id,
      plant_id: params[:plant_id] || @plant_count.plant_id,
      count: x
    )
    p "plant is #{plant}, plant_count is #{@plant_count}"
    p "plant dot length is #{x}"
    p current_user
    render :show
  end
end
