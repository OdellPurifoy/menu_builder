class CreateJoinTableMealsWeeklyMenus < ActiveRecord::Migration[5.2]
  def change
    create_join_table :meals, :weekly_menus do |t|
      t.index %i[meal_id weekly_menu_id]
      t.index %i[weekly_menu_id meal_id]
    end
  end
end
