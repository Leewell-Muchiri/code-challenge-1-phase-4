# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts 'Seeding data...'
7.times do
  Pizza.create(
    [{ name: Faker::Food.dish, ingredients: Faker::Food.description }],
  )
end

7.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
  )
end


RestaurantPizza.create(price:25, pizza_id:1, restaurant_id:1)
RestaurantPizza.create(price:12, pizza_id:1, restaurant_id:2)
RestaurantPizza.create(price:18, pizza_id:2, restaurant_id:4)
RestaurantPizza.create(price:10, pizza_id:1, restaurant_id:5)
RestaurantPizza.create(price:9, pizza_id:4, restaurant_id:4)
RestaurantPizza.create(price:10, pizza_id:5, restaurant_id:5)
RestaurantPizza.create(price:21, pizza_id:1, restaurant_id:1)
RestaurantPizza.create(price:16, pizza_id:3, restaurant_id:3)

puts 'Done seeding data!'