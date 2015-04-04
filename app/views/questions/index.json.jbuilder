json.array!(@questions) do |question|
  json.extract! question, :id, :q1, :q1a, :q1b, :q1c, :q1d, :q1correct, :q2, :q2a, :q2b, :q2c, :q2d, :q2correct, :q3, :q3a, :q3b, :q3c, :q3d, :q3correct
  json.url question_url(question, format: :json)
end
