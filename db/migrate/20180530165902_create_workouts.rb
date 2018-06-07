class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :workout_name
      t.string :difficulty
      t.string :duration
      t.date :workout_date
      t.string :location
      t.string :instructor
      t.string :time
      t.timestamps
    end

  end
end
