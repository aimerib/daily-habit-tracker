require "application_system_test_case"

class DailyHabitsTest < ApplicationSystemTestCase
  setup do
    @daily_habit = daily_habits(:one)
  end

  test "visiting the index" do
    visit daily_habits_url
    assert_selector "h1", text: "Daily habits"
  end

  test "should create daily habit" do
    visit daily_habits_url
    click_on "New daily habit"

    check "Breakfast" if @daily_habit.breakfast
    fill_in "Daily steps", with: @daily_habit.daily_steps
    fill_in "Date", with: @daily_habit.date
    check "Dinner" if @daily_habit.dinner
    fill_in "Energy", with: @daily_habit.energy
    check "Evening meds" if @daily_habit.evening_meds
    fill_in "Exercise minutes", with: @daily_habit.exercise_minutes
    fill_in "Hours slept", with: @daily_habit.hours_slept
    check "Lunch" if @daily_habit.lunch
    fill_in "Mood", with: @daily_habit.mood
    check "Morning meds" if @daily_habit.morning_meds
    click_on "Create Daily habit"

    assert_text "Daily habit was successfully created"
    click_on "Back"
  end

  test "should update Daily habit" do
    visit daily_habit_url(@daily_habit)
    click_on "Edit this daily habit", match: :first

    check "Breakfast" if @daily_habit.breakfast
    fill_in "Daily steps", with: @daily_habit.daily_steps
    fill_in "Date", with: @daily_habit.date
    check "Dinner" if @daily_habit.dinner
    fill_in "Energy", with: @daily_habit.energy
    check "Evening meds" if @daily_habit.evening_meds
    fill_in "Exercise minutes", with: @daily_habit.exercise_minutes
    fill_in "Hours slept", with: @daily_habit.hours_slept
    check "Lunch" if @daily_habit.lunch
    fill_in "Mood", with: @daily_habit.mood
    check "Morning meds" if @daily_habit.morning_meds
    click_on "Update Daily habit"

    assert_text "Daily habit was successfully updated"
    click_on "Back"
  end

  test "should destroy Daily habit" do
    visit daily_habit_url(@daily_habit)
    click_on "Destroy this daily habit", match: :first

    assert_text "Daily habit was successfully destroyed"
  end
end
