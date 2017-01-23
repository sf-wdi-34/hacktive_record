require 'ffaker'
require './models/director.rb'
require './models/movie.rb'

# "SEED DATA" - but no db yet!

5.times do
  Director.create({
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    email: FFaker::Internet.free_email,
    phone: FFaker::PhoneNumber.short_phone_number
  })
end

5.times do
  Movie.create({
    title: FFaker::Movie.title,
    duration: rand(1..6)*15,
    director_id: Director.all.sample.id
  })
end


# PRINT TO CONSOLE

puts "Directors"
puts "========"
Director.all.each do |director|
  p director
end

puts "Movies"
puts "========"
Movie.all.each do |movie|
  p movie
end
