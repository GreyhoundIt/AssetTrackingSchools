json.array!(@locations) do |location|
  json.extract! location, :id, :name, :main_occupent, :group
  json.url location_url(location, format: :json)
end
