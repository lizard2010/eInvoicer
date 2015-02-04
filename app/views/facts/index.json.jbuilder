json.array!(@facts) do |fact|
  json.extract! fact, :id, :activity_id, :start_time, :end_time, :description, :activity, :tags
  json.url fact_url(fact, format: :json)
  json.duration  ((fact.end_time - fact.start_time)/60).to_i
  json.tag fact.tags.map{|n| n.name}.join(", ")
end
