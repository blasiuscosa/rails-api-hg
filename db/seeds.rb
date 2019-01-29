5.times do
  restaurant = Restaurants.create({ name: Faker::Name.name })
  restaurant.dishes.create({ name: Faker::Name.name })
end
