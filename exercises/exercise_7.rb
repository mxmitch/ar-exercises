require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true 
  validates :hourly_rate, inclusion: { in: 40..200}
  validates :hourly_rate, numericality: { only_integer: true }
  validates :store_id, presence: true
end

class Store < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, presence: true
  validates :annual_revenue, numericality: { only_integer: true }
  validates :annual_revenue, numericality: { greater_than: 0 }
end

puts "What is a store name?"
user_input = gets.chomp

store = Store.new(name: user_input)
puts store.valid?
puts store.errors.messages


