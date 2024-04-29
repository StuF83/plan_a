class TrainingWeekWorkout < ApplicationRecord
  belongs_to :training_week
  belongs_to :workout
end
