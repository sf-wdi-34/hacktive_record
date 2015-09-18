require 'ffaker'
require './models/speaker.rb'
require './models/talk.rb'

# SEED DATABASE

5.times do
  Speaker.create({
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    email: FFaker::Internet.free_email,
    phone: FFaker::PhoneNumber.short_phone_number
  })
end

5.times do
  Talk.create({
    topic: FFaker::Company.catch_phrase,
    duration: rand(1..6)*15,
    speaker_id: Speaker.all.sample.id
  })
end


# PRINT TO CONSOLE

puts "Speakers"
puts "========"
Speaker.all.each do |speaker|
  p speaker
end

puts "Talks"
puts "========"
Talk.all.each do |talk|
  p talk
end
