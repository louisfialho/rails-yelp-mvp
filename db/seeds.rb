# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "80923480", category: "french" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "80923480", category: "japanese" }
big_mamma =  { name: "Big Mamma", address: "9 Jane Street", phone_number: "80923480", category: "italian" }
ombu =  { name: "Ombu", address: "489 Louis Street", phone_number: "80923480", category: "belgian" }
silver_tower =  { name: "Silver Tower", address: "485 Highway Hills", phone_number: "80923480", category: "chinese" }

[ dishoom, pizza_east, big_mamma, ombu, silver_tower ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

