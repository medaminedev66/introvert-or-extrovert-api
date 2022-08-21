json.array! @questions do |question|
  json.question do
    json.text question.text
  end
end

# json.text @question.text