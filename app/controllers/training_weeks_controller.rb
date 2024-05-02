class TrainingWeeksController < ApplicationController
  def index
    @training_weeks = TrainingWeek.all
  end

  def show
    @training_week = TrainingWeek.find(params[:id])
  end

  def new
    @training_week = TrainingWeek.new(workouts: [Workout.new])
  end

  def create
    @training_week = TrainingWeek.new(training_week_params)

    if @training_week.save
      redirect_to @training_week
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @training_week = TrainingWeek.find(params[:id])
    @training_week.destroy

    redirect_to training_weeks_url
  end

  def show_current_training_week
    @training_week = current_training_week
  end

  private

    def current_training_week
      @training_week = TrainingWeek.where(start_date: ((Date.today - 6.day)..Date.today))
    end

    def training_week_params
      params.require(:training_week).permit(:start_date, workouts_attributes: [:id, :body])

    end
end
