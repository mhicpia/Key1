json.array!(@keys) do |key|
  json.extract! key, :id, :description, :number, :facility, :company, :checkout, :checkin
  json.url key_url(key, format: :json)
end
