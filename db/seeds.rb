# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

q_1 = Question.create!(text: "You’re really busy at work and a colleague is telling you their life story and personal woes. You:")
q_1.answers.create!([{text: "Don’t dare to interrupt them"}, {text: "Think it’s more important to give them some of your time; work can wait"}, {text: "Listen, but with only with half an ear"}, {text: "Interrupt and explain that you are really busy at the moment", correct: true}])


q_2 = Question.create!(text: "You’ve been sitting in the doctor’s waiting room for more than 25 minutes. You:")
q_2.answers.create!([{text: "Look at your watch every two minutes", correct: true}, {text: "Bubble with inner anger, but keep quiet"}, {text: "Explain to other equally impatient people in the room that the doctor is always running late"}, {text: "Complain in a loud voice, while tapping your foot impatiently"}])

q_3 = Question.create!(text: "You’re having an animated discussion with a colleague regarding a project that you’re in charge of. You:")
q_3.answers.create!([{text: "Don’t dare contradict them", correct: true}, {text: "Think that they are obviously right"}, {text: "Defend your own point of view, tooth and nail"}, {text: "Continuously interrupt your colleague"}])

q_4 = Question.create!(text: "You are taking part in a guided tour of a museum. You:")
q_4.answers.create!([{text: "Are a bit too far towards the back so don’t really hear what the guide is saying", correct: true}, {text: "Follow the group without question", correct: true}, {text: "Make sure that everyone is able to hear properly"}, {text: "Are right up the front, adding your own comments in a loud voice"}])

q_5 = Question.create!(text: "During dinner parties at your home, you have a hard time with people who:")
q_5.answers.create!([{text: "Ask you to tell a story in front of everyone else", correct: true}, {text: "Talk privately between themselves"}, {text: "Hang around you all evening", correct: true}, {text: "Always drag the conversation back to themselves"}])