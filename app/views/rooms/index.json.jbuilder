json.array!(@rooms) do |room|
  json.extract! room, :id, :property_id, :tenant_id, :subletter_id, :listing_id
  json.url room_url(room, format: :json)
end
