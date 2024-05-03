class WorkoutsController < ApplicationController
  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    @workout.save

    if @workout.save
      redirect_to @workout
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def index
    @workouts = Workout.all
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy

    redirect_to workouts_url
  end

  private

  def workout_params
      params.require(:workout).permit(:content)
  end
end
