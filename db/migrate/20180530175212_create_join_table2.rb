class CreateJoinTable2 < ActiveRecord::Migration[5.2]
  def change
    create_join_table :movements, :workouts do |t|
      t.index [:movement_id, :workout_id]
      t.index [:workout_id, :movement_id]
    end
  end
end
