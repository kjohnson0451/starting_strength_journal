class ExerciseDayService

  SQUAT_DESCRIPTION = "3x5 Squat"
  PRESS_DESCRIPTION = "3x5 Press"
  BENCH_DESCRIPTION = "3x5 Bench"
  DEADLIFT_DESCRIPTION = "1x5 Deadlift"
  POWER_CLEAN_DESCRIPTION = "3x5 Power Clean"

  def create_exercise_day(day_type, day_name)
    case day_type
    when DAY_TYPE_PRESS
      exercise1 = Exercise.new(:description => SQUAT_DESCRIPTION)
      exercise2 = Exercise.new(:description => PRESS_DESCRIPTION)
      exercise3 = Exercise.new(:description => DEADLIFT_DESCRIPTION)
    when DAY_TYPE_BENCH
      exercise1 = Exercise.new(:description => SQUAT_DESCRIPTION)
      exercise2 = Exercise.new(:description => BENCH_DESCRIPTION)
      exercise3 = Exercise.new(:description => DEADLIFT_DESCRIPTION)
    when DAY_TYPE_POWER_CLEAN
      exercise1 = Exercise.new(:description => SQUAT_DESCRIPTION)
      exercise2 = Exercise.new(:description => BENCH_DESCRIPTION)
      exercise3 = Exercise.new(:description => POWER_CLEAN_DESCRIPTION)
    end

    day = Day.new(:name => day_name)
    day.exercises.append(exercise1)
    day.exercises.append(exercise2)
    day.exercises.append(exercise3)

    return day
  end

  def create_exercise_week(last_day_type)
    week = Week.new
    case last_day_type
    when DAY_TYPE_BENCH
        week.days.append(create_exercise_day(DAY_TYPE_PRESS, "Monday"))
        week.days.append(create_exercise_day(DAY_TYPE_BENCH, "Wednesday"))
        week.days.append(create_exercise_day(DAY_TYPE_PRESS, "Friday"))
    when DAY_TYPE_PRESS
      week.days.append(create_exercise_day(DAY_TYPE_BENCH, "Monday"))
      week.days.append(create_exercise_day(DAY_TYPE_PRESS, "Wednesday"))
      week.days.append(create_exercise_day(DAY_TYPE_BENCH, "Friday"))
    end

    return week
  end
end
