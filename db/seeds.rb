# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

q_1 = Question.create!(text: "You’re really busy at work and a colleague is telling you their life story and personal woes. You:"
)

op_1 = Option.create!(question: q_1)

op_1.answers << [Answer.create!(text: "Don’t dare to interrupt them", option: op_1), Answer.create!(text: "Think it’s more important to give them some of your time; work can wait", correct: true, option: op_1)]