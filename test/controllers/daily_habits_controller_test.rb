require "test_helper"

class DailyHabitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_habit = daily_habits(:one)
  end

  test "should get index" do
    get daily_habits_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_habit_url
    assert_response :success
  end

  test "should create daily_habit" do
    assert_difference("DailyHabit.count") do
      post daily_habits_url, params: { daily_habit: { breakfast: @daily_habit.breakfast, daily_steps: @daily_habit.daily_steps, date: @daily_habit.date, dinner: @daily_habit.dinner, energy: @daily_habit.energy, evening_meds: @daily_habit.evening_meds, exercise_minutes: @daily_habit.exercise_minutes, hours_slept: @daily_habit.hours_slept, lunch: @daily_habit.lunch, mood: @daily_habit.mood, morning_meds: @daily_habit.morning_meds } }
    end

    assert_redirected_to daily_habit_url(DailyHabit.last)
  end

  test "should show daily_habit" do
    get daily_habit_url(@daily_habit)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_habit_url(@daily_habit)
    assert_response :success
  end

  test "should update daily_habit" do
    patch daily_habit_url(@daily_habit), params: { daily_habit: { breakfast: @daily_habit.breakfast, daily_steps: @daily_habit.daily_steps, date: @daily_habit.date, dinner: @daily_habit.dinner, energy: @daily_habit.energy, evening_meds: @daily_habit.evening_meds, exercise_minutes: @daily_habit.exercise_minutes, hours_slept: @daily_habit.hours_slept, lunch: @daily_habit.lunch, mood: @daily_habit.mood, morning_meds: @daily_habit.morning_meds } }
    assert_redirected_to daily_habit_url(@daily_habit)
  end

  test "should destroy daily_habit" do
    assert_difference("DailyHabit.count", -1) do
      delete daily_habit_url(@daily_habit)
    end

    assert_redirected_to daily_habits_url
  end
end
