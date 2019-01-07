class AddAvailableDayToWeeklyMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :weekly_menus, :available_day, :string
  end
end
