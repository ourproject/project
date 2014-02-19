json.array!(@users) do |user|
  json.extract! user, :id, :role, :name, :email_id, :password, :date_of_birth, :qualification, :address
  json.url user_url(user, format: :json)
end
