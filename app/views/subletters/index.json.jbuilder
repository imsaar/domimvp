json.array!(@subletters) do |subletter|
  json.extract! subletter, :id, :user_id
  json.url subletter_url(subletter, format: :json)
end
