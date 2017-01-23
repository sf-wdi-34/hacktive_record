require 'ffaker'

10.times do
  first_name = FFaker::Name.first_name
  last_name = FFaker::Name.last_name
  email = FFaker::Internet.free_email
  phone = FFaker::PhoneNumber.short_phone_number
  puts "#{first_name} #{last_name}, #{email}, #{phone}"
end
