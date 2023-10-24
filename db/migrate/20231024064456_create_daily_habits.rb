class CreateDailyHabits < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_habits do |t|
      t.date :date
      t.decimal :hours_slept, precision: 3, scale: 1
      t.boolean :breakfast, default: false
      t.boolean :lunch, default: false
      t.boolean :dinner, default: false
      t.boolean :morning_meds, default: false
      t.boolean :evening_meds, default: false
      t.integer :exercise_minutes
      t.integer :daily_steps
      t.integer :mood
      t.integer :energy

      t.timestamps
    end
  end
end
