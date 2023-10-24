json.extract! daily_habit, :id, :date, :hours_slept, :breakfast, :lunch, :dinner, :morning_meds, :evening_meds, :exercise_minutes, :daily_steps, :mood, :energy, :created_at, :updated_at
json.url daily_habit_url(daily_habit, format: :json)
