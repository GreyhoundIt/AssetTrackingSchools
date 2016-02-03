json.array!(@softwares) do |software|
  json.extract! software, :id, :name, :asset_tag, :invoice, :cost, :purchase_date, :renewal_date, :licence_key, :number_of_licences, :licence_type, :description, :note, :supplier_id
  json.url software_url(software, format: :json)
end
