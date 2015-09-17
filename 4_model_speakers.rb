require 'ffaker'
require './app/models/speaker.rb'

5.times do
  args = {
            first_name: FFaker::Name.first_name,
            last_name: FFaker::Name.last_name,
            email: FFaker::Internet.free_email,
            phone: FFaker::PhoneNumber.short_phone_number
          }
  speaker = Speaker.new(args)
  p speaker
end
