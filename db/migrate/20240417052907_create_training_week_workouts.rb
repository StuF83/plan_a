class CreateTrainingWeekWorkouts < ActiveRecord::Migration[7.1]
  def change
    create_table :training_week_workouts do |t|
      t.belongs_to :training_week, null: false, foreign_key: true
      t.belongs_to :workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
