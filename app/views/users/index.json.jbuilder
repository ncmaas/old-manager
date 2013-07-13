json.array!(@users) do |user|
  json.extract! user, :name, :email, :username, :yaleyear, :college, :sobclass, :voicepart, :major
  json.url user_url(user, format: :json)
end
