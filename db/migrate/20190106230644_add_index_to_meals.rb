class AddIndexToMeals < ActiveRecord::Migration[5.2]
  def change
    add_index :meals, :name, unique: true
  end
end
