# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create a main sample user.
User.create!(name:  "Andrii Aheiev",
             email: "andrii.aheiev@gmail.com",
             password:              "P@ssw0rd!",
             password_confirmation: "P@ssw0rd!",
             admin: true)

User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)
# Generate a bunch of additional users.
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "P@ssw0rd!"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end