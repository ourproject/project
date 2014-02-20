json.array!(@tests) do |test|
  json.extract! test, :id, :set_by, :number_of_questions, :duration, :cutoff
  json.url test_url(test, format: :json)
end
