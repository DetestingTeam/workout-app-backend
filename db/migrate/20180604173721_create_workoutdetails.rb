class CreateWorkoutdetails < ActiveRecord::Migration[5.2]
  def change
    create_table :workoutdetails do |t|
      t.integer :set
      t.integer :rep
      t.string :duration
      t.references :movement, index: true, foreign_key: true
      t.references :workout, index: true, foreign_key: true
      t.timestamps
    end
  end
end
