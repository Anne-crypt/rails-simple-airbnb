# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

3.times do
flat = Flat.new(
  name:    Faker::Company.name,
  address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  description:  Faker::Lorem.words(number: 10),
  price_per_night: Faker::Commerce.price,
  number_of_guests: rand(1..8)
)
  flat.save!
end
