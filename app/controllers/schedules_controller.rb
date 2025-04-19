include ActionView::Helpers::DateHelper

class SchedulesController < ApplicationController
  def index
    @schedules = current_user.schedules.where(status: false)
    render :index
  end

  def show
    @schedule = Schedule.find_by(id: params[:id])
    render :show
  end

  def show_of_plant
    @schedules = Schedule.where(plant_id: params[:plant_id], status: false, user_id: current_user.id)
    render :index
  end

  def create
    @schedule = Schedule.new(
    plant_id: params[:plant_id],
    user_id: current_user.id,
    growth_status: 0,
    status: false
    )
    @schedule.save
    @schedule.update(
      last_watered_date: @schedule.created_at
    )
    render :show
  end

  def update
    x = 0
    while x < Schedule.last.id + 1
      if Schedule.find_by(id: x) != nil
        @schedule = Schedule.find_by(id: x)
        @schedule.update(
          time_changed: (Date.current - Date.parse(@schedule.last_watered_date.to_s)).to_i * 24
            # time_changed: @schedule.time_changed+1
          )
      end
        x += 1
    end
    render :show
  end

  def water
    @schedule = Schedule.find_by(id: params[:id])
    @schedule.update(
    last_watered_date: Date.today,
    growth_status: @schedule.growth_status + 1
    )
    if @schedule.growth_status == @schedule.plant.growth_req
      @schedule.update(
        status: true
      )
    end
    render :show
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
