# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

routine = Routine.create()

week = Week.create(position: 1, routine: routine)

days = Day.create([{week: week, name: "Monday", day_type: DAY_TYPE_A}, {week: week, name: "Wednesday", day_type: DAY_TYPE_B}, {week: week, name: "Friday", day_type: DAY_TYPE_A}])

Exercise.create(day: days[0], position: 1, description: "3x5 Squat")
Exercise.create(day: days[0], position: 2, description: "3x5 Press")
Exercise.create(day: days[0], position: 3, description: "1x5 Deadlift")

Exercise.create(day: days[1], position: 1, description: "3x5 Squat")
Exercise.create(day: days[1], position: 2, description: "3x5 Bench")
Exercise.create(day: days[1], position: 3, description: "1x5 Deadlift")

Exercise.create(day: days[2], position: 1, description: "3x5 Squat")
Exercise.create(day: days[2], position: 2, description: "3x5 Press")
Exercise.create(day: days[2], position: 3, description: "1x5 Deadlift")
