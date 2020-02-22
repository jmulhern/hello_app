# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

password = 'pass12'

User.create! name: 'Admin',
             email: 'admin@blah.com',
             password: password,
             password_confirmation: password

99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@blah.com"
  User.create! name: name,
               email: email,
               password: password,
               password_confirmation: password
end