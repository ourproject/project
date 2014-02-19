json.array!(@my_questions) do |my_question|
  json.extract! my_question, :id, :question, :option_a, :option_b, :option_c, :option_d, :anwser, :question_type, :created_by, :difficulty_level
  json.url my_question_url(my_question, format: :json)
end
