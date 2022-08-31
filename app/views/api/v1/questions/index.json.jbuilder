json.array! @questions do |question|
  json.id question.id
  json.question question.text
  json.answers do 
    json.array! question.answers do |answer|
      json.id answer.id
      json.text answer.text
      json.correct answer.correct
    end
  end 
end

# json.text @question.text