class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :date
      t.string :time
      t.references :workouts, index: true
      t.timestamps
    end
  end
end
