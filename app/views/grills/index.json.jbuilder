json.array!(@grills) do |grill|
  json.extract! grill, :id, :ans1, :ans2, :ans3, :question_id
  json.url grill_url(grill, format: :json)
end
