require 'ffaker'
require './models/director.rb'
require './models/movie.rb'

5.times do
  # create a director
  puts "created an instance of a director..."
end

puts "Directors"
puts "========"
Director.all.each do |director|
  p director
end


puts "Movies"
puts "========"
# create and print movies
