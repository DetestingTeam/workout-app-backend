class CreateMovements < ActiveRecord::Migration[5.2]
  def change
    create_table :movements do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :bodypart

      t.timestamps
    end
  end
end