json.array!(@answers) do |answer|
  json.extract! answer, :id, :test_id, :user_id, :question_id, :selected_answer
  json.url answer_url(answer, format: :json)
end
