class RemoveBodyFromWorkout < ActiveRecord::Migration[7.1]
  def change
    remove_column :workouts, :body, :string
  end
end
