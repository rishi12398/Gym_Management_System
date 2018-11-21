class SchedulesController < ApplicationController
  def new
  end

  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def create
    @schedule = Schedule.new(schedule_params)

    @schedule.save
    redirect_to @schedule
  end

  private
  def schedule_params
    params.require(:schedule).permit(:title, :text)
  end
end
