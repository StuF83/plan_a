class TrainingWeek < ApplicationRecord
  validates :start_date, presence: true

  has_many :training_week_workouts
  has_many :workouts, through: :training_week_workouts

  accepts_nested_attributes_for :workouts
end
