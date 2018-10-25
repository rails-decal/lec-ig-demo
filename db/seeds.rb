# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create your own Fake Data! https://github.com/stympy/faker

require 'faker'

10.times do |index|
  User.create!(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    bio: Faker::Twitter.status[:text],
                    email: Faker::Internet.email,
                    password: Faker::Internet.password
                    )
end
