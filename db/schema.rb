# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_09_013456) do

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.string "side_dish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "weekly_menu_id"
    t.integer "user_id"
    t.index ["name"], name: "index_meals_on_name", unique: true
  end

  create_table "meals_weekly_menus", id: false, force: :cascade do |t|
    t.integer "meal_id", null: false
    t.integer "weekly_menu_id", null: false
    t.index ["meal_id", "weekly_menu_id"], name: "index_meals_weekly_menus_on_meal_id_and_weekly_menu_id"
    t.index ["weekly_menu_id", "meal_id"], name: "index_meals_weekly_menus_on_weekly_menu_id_and_meal_id"
  end

  create_table "weekly_menus", force: :cascade do |t|
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
