class SchedulesController < ApplicationController
  def create
    user = User.new(
    plant_id: params[:plant_id],
    user_id: params[user_idl],
    watering_start_date: params[:watering_start_date]
    )
  end
end
