# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
10.times do
    Dogsitter.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        age: rand(18..85)
    )
end

15.times do
    Dog.create!(
        name: Faker::Creature::Dog.name,
        race: Faker::Creature::Dog.breed,
        age: rand(1..15)
    )
end

10.times do
    City.create!(
        name: Faker::Address.city,
        zip_code: Faker::Address.zip_code
    )
end