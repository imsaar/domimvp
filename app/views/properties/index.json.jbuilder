json.array!(@properties) do |property|
  json.extract! property, :id, :total_bedrooms, :total_bathrooms, :address, :description, :commute_to_campus_in_minutes, :listing_id
  json.url property_url(property, format: :json)
end
