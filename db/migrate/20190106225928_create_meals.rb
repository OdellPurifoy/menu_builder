class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name, unique: true, null: false
      t.string :side_dish
      t.text :description

      t.timestamps
    end
    add_index :meals, :name, unique: true
  end
end
