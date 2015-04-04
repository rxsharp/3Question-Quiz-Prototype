json.array!(@results) do |result|
  json.extract! result, :id, :score, :grill_id
  json.url result_url(result, format: :json)
end
