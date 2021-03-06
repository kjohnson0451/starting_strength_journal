class WeeksController < ApplicationController
  before_action :set_routine, only: [:create, :destroy]

  SQUAT_DESCRIPTION = "3x5 Squat"
  PRESS_DESCRIPTION = "3x5 Press"
  BENCH_DESCRIPTION = "3x5 Bench"
  DEADLIFT_DESCRIPTION = "1x5 Deadlift"

  def create
    m_exercise_day_service = ExerciseDayService.new

    last_day_type = DAY_TYPE_B

    if @routine.weeks.any?
      last_day_type = @routine.weeks.last.days.last[:day_type]
    end

    @routine.weeks.append(m_exercise_day_service.create_exercise_week(@routine[:phase], last_day_type))

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

end
