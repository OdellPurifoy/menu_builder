class CreateWeeklyMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :weekly_menus do |t|
      t.date :start_date

      t.timestamps
    end
  end
end
