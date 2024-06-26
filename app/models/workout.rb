class Workout < ApplicationRecord
  has_rich_text :content

  has_many :training_week_workouts
  has_many :training_weeks, through: :training_week_workouts, dependent: :destroy
end
