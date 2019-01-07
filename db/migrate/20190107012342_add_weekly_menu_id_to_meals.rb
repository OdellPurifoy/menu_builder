class AddWeeklyMenuIdToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :weekly_menu_id, :integer
  end
end
