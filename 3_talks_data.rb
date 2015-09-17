require 'ffaker'

puts "Speakers"
puts "========"
5.times do
  first_name = FFaker::Name.first_name
  last_name = FFaker::Name.last_name
  email = FFaker::Internet.free_email
  phone = FFaker::PhoneNumber.short_phone_number
  speaker = {
              first_name: first_name,
              last_name: last_name,
              email: email,
              phone: phone
            }
  puts speaker
end

puts "\nTalks"
puts "====="
5.times do
  talk = {
    topic: FFaker::Company.catch_phrase,
    duration: 15
  }
  puts talk
end
