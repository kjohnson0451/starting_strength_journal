class WeeksController < ApplicationController
  #before_action :set_week, only: [:show, :edit, :update, :destroy]

  SQUAT_DESCRIPTION = "3x5 Squat"
  PRESS_DESCRIPTION = "3x5 Press"
  BENCH_DESCRIPTION = "3x5 Bench"
  DEADLIFT_DESCRIPTION = "1x5 Deadlift"

  def create
    week = Week.new

    week.days << create_press_day << create_bench_day << create_press_day

    routine = Routine.find(1)
    routine.weeks.append(week)
    routine.save

    redirect_to root_path
  end

  def destroy
    routine = Routine.find(1)
    week = Week.find(params[:id])

    routine.weeks.last.destroy until routine.weeks.last == week
    week.destroy

    redirect_to root_path
  end

  private
    def create_press_day

      exercise1 = Exercise.new(:description => SQUAT_DESCRIPTION)
      exercise2 = Exercise.new(:description => PRESS_DESCRIPTION)
      exercise3 = Exercise.new(:description => DEADLIFT_DESCRIPTION)

      day = Day.new
      day.exercises << exercise3 << exercise2 << exercise1

      return day
    end

    def create_bench_day
      exercise1 = Exercise.new(:description => SQUAT_DESCRIPTION)
      exercise2 = Exercise.new(:description => BENCH_DESCRIPTION)
      exercise3 = Exercise.new(:description => DEADLIFT_DESCRIPTION)

      day = Day.new
      day.exercises << exercise3 << exercise2 << exercise1

      return day
    end
end
