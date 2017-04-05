class WeeksController < ApplicationController
  before_action :set_routine, only: [:create, :destroy]

  SQUAT_DESCRIPTION = "3x5 Squat"
  PRESS_DESCRIPTION = "3x5 Press"
  BENCH_DESCRIPTION = "3x5 Bench"
  DEADLIFT_DESCRIPTION = "1x5 Deadlift"

  def create
    week = Week.new

    week.days << create_press_day("Monday") << create_bench_day("Wednesday") << create_press_day("Friday")

    @routine.weeks.append(week)
    @routine.save

    redirect_to root_path
  end

  def destroy
    week = Week.find(params[:id])

    @routine.weeks.last.destroy until @routine.weeks.last == week
    week.destroy

    if @routine.weeks.any?
      redirect_to root_path
    else
      create
    end
  end

  private
  def set_routine
    if user_signed_in?
      @routine = current_user.routine
    else
      @routine = Routine.find(1)
    end
  end

  def create_press_day(day_name)

    exercise1 = Exercise.new(:description => SQUAT_DESCRIPTION)
    exercise2 = Exercise.new(:description => PRESS_DESCRIPTION)
    exercise3 = Exercise.new(:description => DEADLIFT_DESCRIPTION)

    day = Day.new(:name => day_name)
    day.exercises.append(exercise1)
    day.exercises.append(exercise2)
    day.exercises.append(exercise3)

    return day
  end

  def create_bench_day(day_name)
    exercise1 = Exercise.new(:description => SQUAT_DESCRIPTION)
    exercise2 = Exercise.new(:description => BENCH_DESCRIPTION)
    exercise3 = Exercise.new(:description => DEADLIFT_DESCRIPTION)

    day = Day.new(:name => day_name)
    day.exercises.append(exercise1)
    day.exercises.append(exercise2)
    day.exercises.append(exercise3)

    return day
  end
end
