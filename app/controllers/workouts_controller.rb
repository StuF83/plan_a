class WorkoutsController < ApplicationController
  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    @workout.save
  end

  private

  def workout_params
      params.require(:workout).permit(:body)
  end
end
