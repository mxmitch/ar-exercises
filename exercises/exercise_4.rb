require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

surrey = Store.create(
  name: "Burnaby",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)

whistler = Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)

yaletown = Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

mens_stores = Store.where(mens_apparel: true)
@mens_stores = mens_stores

for mens_store in @mens_stores do
  puts mens_store.name
  puts mens_store.annual_revenue
end

womens_stores = Store.where(["womens_apparel = ? and annual_revenue < ?", "true", "1000000"])
@womens_stores = womens_stores


for womens_store in @womens_stores do
  puts womens_store.name
  puts womens_store.annual_revenue
end

