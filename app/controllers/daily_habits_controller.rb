class DailyHabitsController < ApplicationController
  before_action :set_daily_habit, only: %i[ show edit update destroy ]

  # GET /daily_habits or /daily_habits.json
  def index
    @daily_habits = DailyHabit.all
  end

  # GET /daily_habits/1 or /daily_habits/1.json
  def show
  end

  # GET /daily_habits/new
  def new
    @daily_habit = DailyHabit.new
  end

  # GET /daily_habits/1/edit
  def edit
  end

  # POST /daily_habits or /daily_habits.json
  def create
    @daily_habit = DailyHabit.new(daily_habit_params)

    respond_to do |format|
      if @daily_habit.save
        format.html { redirect_to daily_habit_url(@daily_habit), notice: "Daily habit was successfully created." }
        format.json { render :show, status: :created, location: @daily_habit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @daily_habit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_habits/1 or /daily_habits/1.json
  def update
    respond_to do |format|
      if @daily_habit.update(daily_habit_params)
        format.html { redirect_to daily_habit_url(@daily_habit), notice: "Daily habit was successfully updated." }
        format.json { render :show, status: :ok, location: @daily_habit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @daily_habit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_habits/1 or /daily_habits/1.json
  def destroy
    @daily_habit.destroy

    respond_to do |format|
      format.html { redirect_to daily_habits_url, notice: "Daily habit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_habit
      @daily_habit = DailyHabit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def daily_habit_params
      params.require(:daily_habit).permit(:date, :hours_slept, :breakfast, :lunch, :dinner, :morning_meds, :evening_meds, :exercise_minutes, :daily_steps, :mood, :energy)
    end
end
