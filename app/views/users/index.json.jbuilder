json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :location, :username, :email
  json.url user_url(user, format: :json)
end
