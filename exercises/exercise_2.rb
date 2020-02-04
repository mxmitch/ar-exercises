require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# SELECT * FROM stores WHERE id = 1

store = Store.find_by(id:1)
@store1 = store

store2 = Store.find_by(id:2)
@store2 = store2 

@store1.update(name: "New Westminster")





