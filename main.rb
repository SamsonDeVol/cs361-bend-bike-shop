!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'rental'

items = [:apple, :water, :protein_bar]

luggage = Luggage.new(items)

bike = Bike.new(1, :pink, 99.99, luggage)

rental = Rental.new(99.99, bike.weight, luggage.weight)

puts "Total Price: #{rental.price}, Total Weight: #{rental.weight}"

