class AddMealIdToWeeklyMenu < ActiveRecord::Migration[5.2]
  def change
    add_column :weekly_menus, :meal_id, :integer
  end
end
