json.array!(@passwords) do |password|
  json.extract! password, :id, :room_id, :user_id, :password
  json.url password_url(password, format: :json)
end
