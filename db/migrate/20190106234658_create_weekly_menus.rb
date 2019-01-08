class CreateWeeklyMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :weekly_menus do |t|
      t.date :start_date, null: false
      t.string :available_day, null: false
      t.timestamps
    end
  end
end
