class ExercisesController < ApplicationController
  def create
    @schedule = Schedule.find(params[:schedule_id])
    @exercise = @schedule.exercises.create(exercise_params)
    redirect_to schedule_path(@schedule)
  end

  def destroy
    @schedule = Schedule.find(params[:schedule_id])
    @exercise = @schedule.exercises.find(params[:id])
    @exercise.destroy
    redirect_to schedule_path(@schedule)
  end

  private
    def exercise_params
      params.require(:exercise).permit(:name ,:reps ,:sets ,:day)
    end
end
