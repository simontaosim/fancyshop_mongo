json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :email, :mobile
  json.url user_url(user, format: :json)
end
