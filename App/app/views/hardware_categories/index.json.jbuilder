json.array!(@hardware_categories) do |hardware_category|
  json.extract! hardware_category, :id, :name
  json.url hardware_category_url(hardware_category, format: :json)
end
