require "http"

puts "Type a number to see a product"

id = gets.chomp

response = HTTP.get("http://localhost:3000/api/products/5")
pp response