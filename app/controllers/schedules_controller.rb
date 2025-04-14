include ActionView::Helpers::DateHelper

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
    user_id: params[:user_id]
    )
    @schedule.save
    @schedule.update(
      last_watered_date: @schedule.created_at
    )
    render :show
  end
  def update
    @schedule = Schedule.find_by(id: params[:id])
    water_date = @schedule.last_watered_date
    today_date = Date.current.to_datetime
    diff = hours = (((water_date - today_date) / 1.hour).round) * -1

    p diff
    @schedule.update(
      plant_id: params[:plant_id] || @schedule.plant_id,
      last_watered_date: Date.today,
      time_changed: diff,
    )
    growth_status.increment!
    render :show
  end
  def delete
    schedule = Schedule.find_by(id: params[:id])
    schedule.delete
    render json: "schedule deleted"
  end
end
