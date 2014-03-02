json.array!(@listings) do |listing|
  json.extract! listing, :id, :open_to_student_only, :rent_per_month, :is_available, :user_id
  json.url listing_url(listing, format: :json)
end
