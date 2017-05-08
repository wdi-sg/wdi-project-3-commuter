# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
User.create(
  email: Faker::Internet.email,
  password: 'password',
  first_name: Faker::LordOfTheRings.character,
  last_name: Faker::HarryPotter.character,
  address: Faker::Address.street_address
)
end

100.times do
Travel.create(
  start_route: Faker::Address.city + 'MRT',
  end_route: Faker::Address.city + 'MRT',
  timeslot: rand(1000..2400).to_s + 'to' + rand(1000..2400).to_s
)
end

100.times do
Interest.create(
  interest_category: Faker::Company.buzzword,
  interest: Faker::Company.buzzword
)
end

100.times do
Combo.create(
  user_id: rand(100) + 1,
  travel_id: rand(100) + 1,
  interest_id: rand(100) + 1
)
end
