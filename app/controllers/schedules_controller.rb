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

    p "diff is " + diff.to_s
    @schedule.update(
      plant_id: params[:plant_id] || @schedule.plant_id,
      time_changed: (Date.current - Date.parse("2000-01-01")).to_i,
      # last_watered_date: Date.today,
      growth_status: @schedule.growth_status + 1
    )
    render :show
  end
  def water
  end
  def delete
    schedule = Schedule.find_by(id: params[:id])
    schedule.delete
    render json: "schedule deleted"
  end
  def reset
    @schedules=Schedule.all
    @schedules.update(
    last_watered_date: "2000-01-01 00:00:00",
    time_changed: (Date.current - Date.parse("2000-01-01")).to_i
      )
  end
end
