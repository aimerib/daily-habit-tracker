# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_24_064456) do
  create_table "daily_habits", force: :cascade do |t|
    t.date "date"
    t.decimal "hours_slept", precision: 3, scale: 1
    t.boolean "breakfast", default: false
    t.boolean "lunch", default: false
    t.boolean "dinner", default: false
    t.boolean "morning_meds", default: false
    t.boolean "evening_meds", default: false
    t.integer "exercise_minutes"
    t.integer "daily_steps"
    t.integer "mood"
    t.integer "energy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end