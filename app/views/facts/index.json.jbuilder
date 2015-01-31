json.array!(@facts) do |fact|
  json.extract! fact, :id, :activity_id, :start_time, :end_time, :description
  json.url fact_url(fact, format: :json)
end