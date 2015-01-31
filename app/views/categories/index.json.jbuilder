json.array!(@categories) do |category|
  json.extract! category, :id, :name, :color_code
  json.url category_url(category, format: :json)
end
