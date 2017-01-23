require 'ffaker'
require './models/director.rb'

5.times do
  args = {
            first_name: FFaker::Name.first_name,
            last_name: FFaker::Name.last_name,
            email: FFaker::Internet.free_email,
            phone: FFaker::PhoneNumber.short_phone_number
          }
  director = Director.new(args)
  p director
end
