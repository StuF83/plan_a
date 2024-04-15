class TrainingWeeksController < ApplicationController
  def show
    @training_week = current_training_week
  end

  private

    def current_training_week
      @training_week = TrainingWeek.where(start_date: (Date.today..(Date.today + 6.day)))
    end
end
