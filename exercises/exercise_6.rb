require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Mitchell", last_name: "Lum", hourly_rate: 45)
@store1.employees.create(first_name: "Lingun", last_name: "Grundleschtein", hourly_rate: 100)
@store2.employees.create(first_name: "Diane", last_name: "Nguyen", hourly_rate: 75)
@store2.employees.create(first_name: "Titus", last_name: "Andromedon", hourly_rate: 200)


