class ExerciseDayService

  SQUAT_DESCRIPTION = "3x5 Squat"
  PRESS_DESCRIPTION = "3x5 Press"
  BENCH_DESCRIPTION = "3x5 Bench"
  DEADLIFT_DESCRIPTION = "1x5 Deadlift"
  POWER_CLEAN_DESCRIPTION = "3x5 Power Clean"

  def create_exercise_day(phase, day_type, day_name)
    case phase
    when PHASE_PRESS_BENCH
        case day_type
        when DAY_TYPE_A
          exercise1 = Exercise.new(:description => SQUAT_DESCRIPTION)
          exercise2 = Exercise.new(:description => PRESS_DESCRIPTION)
          exercise3 = Exercise.new(:description => DEADLIFT_DESCRIPTION)
        when DAY_TYPE_B
          exercise1 = Exercise.new(:description => SQUAT_DESCRIPTION)
          exercise2 = Exercise.new(:description => BENCH_DESCRIPTION)
          exercise3 = Exercise.new(:description => DEADLIFT_DESCRIPTION)
        end
    when PHASE_POWER_CLEAN
      case day_type
      when DAY_TYPE_A
        exercise1 = Exercise.new(:description => SQUAT_DESCRIPTION)
        exercise2 = Exercise.new(:description => PRESS_DESCRIPTION)
        exercise3 = Exercise.new(:description => DEADLIFT_DESCRIPTION)
      when DAY_TYPE_B
        exercise1 = Exercise.new(:description => SQUAT_DESCRIPTION)
        exercise2 = Exercise.new(:description => BENCH_DESCRIPTION)
        exercise3 = Exercise.new(:description => POWER_CLEAN_DESCRIPTION)
      end
    end

    day = Day.new(:name => day_name, :day_type => day_type)
    day.exercises.append(exercise1)
    day.exercises.append(exercise2)
    day.exercises.append(exercise3)

    return day
  end

  def create_exercise_week(phase, last_day_type)
    week = Week.new
    case last_day_type
    when DAY_TYPE_B
        week.days.append(create_exercise_day(phase, DAY_TYPE_A, "Monday"))
        week.days.append(create_exercise_day(phase, DAY_TYPE_B, "Wednesday"))
        week.days.append(create_exercise_day(phase, DAY_TYPE_A, "Friday"))
    when DAY_TYPE_A
      week.days.append(create_exercise_day(phase, DAY_TYPE_B, "Monday"))
      week.days.append(create_exercise_day(phase, DAY_TYPE_A, "Wednesday"))
      week.days.append(create_exercise_day(phase, DAY_TYPE_B, "Friday"))
    end

    return week
  end
end
