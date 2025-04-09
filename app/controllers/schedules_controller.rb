class SchedulesController < ApplicationController
  def index
    @schedules = current_user.schedules
    render :index
  end
  def show
    @schedule = Schedule.find_by(id: params[:id])
    render :show
  end
  def create
    @schedule = Schedule.new(
    plant_id: params[:plant_id],
    user_id: params[:user_id],
    watering_start_date: params[:watering_start_date]
    )
    @schedule.save
    render :show
  end
end
