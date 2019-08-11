# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Equipment.create(title: "Test", img: "https://tinyurl.com/y23nu3bh", owner_id: "Fuck, I made this a string")

5.times do
  Equipment.create(
    title: Faker::Vehicle.make_and_model,
    img: Faker::Avatar.image(slug: "my-own-slug", size: "50x50"),
    make: Faker::Vehicle.make,
    model: Faker::Vehicle.model,
    year: Faker::Vehicle.year,
    rate: Faker::Number.number(digits: 2),
    location: Faker::Address.full_address,
    owner_id: 1
  )
end

5.times do
  Equipment.create(
    title: Faker::Vehicle.make_and_model,
    img: Faker::Avatar.image(slug: "my-own-slug", size: "50x50"),
    make: Faker::Vehicle.make,
    model: Faker::Vehicle.model,
    year: Faker::Vehicle.year,
    rate: Faker::Number.number(digits: 2),
    location: Faker::Address.full_address,
    owner_id: 2
  )
end

5.times do
  Equipment.create(
    title: Faker::Vehicle.make_and_model,
    img: Faker::Avatar.image(slug: "my-own-slug", size: "50x50"),
    make: Faker::Vehicle.make,
    model: Faker::Vehicle.model,
    year: Faker::Vehicle.year,
    rate: Faker::Number.number(digits: 2),
    location: Faker::Address.full_address,
    owner_id: 3
  )
end

5.times do
  Equipment.create(
    title: Faker::Vehicle.make_and_model,
    img: Faker::Avatar.image(slug: "my-own-slug", size: "50x50"),
    make: Faker::Vehicle.make,
    model: Faker::Vehicle.model,
    year: Faker::Vehicle.year,
    rate: Faker::Number.number(digits: 2),
    location: Faker::Address.full_address,
    owner_id: 4
  )
end

5.times do
  Equipment.create(
    title: Faker::Vehicle.make_and_model,
    img: Faker::Avatar.image(slug: "my-own-slug", size: "50x50"),
    make: Faker::Vehicle.make,
    model: Faker::Vehicle.model,
    year: Faker::Vehicle.year,
    rate: Faker::Number.number(digits: 2),
    location: Faker::Address.full_address,
    owner_id: 5
  )
end

10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone: Faker::Number.number(digits: 10),
    profile_img: Faker::Avatar.image(slug: "my-own-slug", size: "50x50"),
  )
end
