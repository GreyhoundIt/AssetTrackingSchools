json.array!(@hardwares) do |hardware|
  json.extract! hardware, :id, :name, :asset_tag, :serial_number, :description, :note, :cost, :purchase_date, :warranty_end_date, :eol, :mdl, :location_id, :hardware_category_id, :manufacturer_id
  json.url hardware_url(hardware, format: :json)
end
