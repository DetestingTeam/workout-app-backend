class CreateUserHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :user_histories do |t|
      t.integer :set
      t.integer :rep
      t.float :weight
      t.string :workout_name
      t.references :movement, index: true, foreign_key: true
      t.references :workout, index: true, foreign_key: true
      # t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
