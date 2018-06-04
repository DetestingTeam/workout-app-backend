class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :difficulty
      t.string :duration

      t.timestamps
    end

  end
end
