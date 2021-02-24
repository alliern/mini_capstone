# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: "Cheetos", price: 3.50, image_url: "https://example.com/cheetos.jpg", description: "crunchy cheese snack")
Product.create(name: "Friskies", price: 7.00, image_url: "https://example.com/friskies.jpg", description: "cat food")