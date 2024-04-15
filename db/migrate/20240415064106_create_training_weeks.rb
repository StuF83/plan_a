class CreateTrainingWeeks < ActiveRecord::Migration[7.1]
  def change
    create_table :training_weeks do |t|
      t.date :start_date

      t.timestamps
    end
  end
end
