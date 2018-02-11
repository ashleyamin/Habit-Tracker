# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

eat = Type.create!(title: 'Eat Healthy')
fitness = Type.create!(title: 'Increase Fitness Level')
sleepy = Type.create!(title: 'Improve Sleep')
skill = Type.create!(title: 'Learn New Skill')
relationships = Type.create!(title: 'Improve Relationships')
spending = Type.create!(title: 'Decrease Spending')
saving = Type.create!(title: 'Save More Money')

puts "#{Type.count} types of habits created"

Habit.create!(type: eat, description: 'more fruits and veggies', weekly_goal: 5, reminder: true)
Habit.create!(type: fitness, description: 'run a few times a week', weekly_goal: 3, reminder: false)
Habit.create!(type: sleepy, description: 'get eight hours', weekly_goal: 7, reminder: true)

puts "#{Habit.count} habits created"
