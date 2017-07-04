require 'faker'

20.times do
  username = Faker::Pokemon.name
  email = Faker::Internet.email
  password = 123123
  User.create(email: email, password: password, username: username)
end

for i in (1..20)
  body = Faker::Lorem.paragraph
  Tweet.create(user: User.find(i), body: body)
end
