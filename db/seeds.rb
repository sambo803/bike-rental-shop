# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

bike = Bike.new(brand: "Schwinn", style: "cruiser", price: 10, image_url: "")
# bike.save

bike = Bike.new(brand: "Diamond Back", style: "mountain bike", price: 12, image_url: "")
# bike.save

bike = Bike.new(brand: "Huffy", style: "street", price: 8, image_url: "")
# bike.save
