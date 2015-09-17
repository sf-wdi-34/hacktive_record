require 'ffaker'

10.times do
  first_name = FFaker::Name.first_name
  last_name = FFaker::Name.last_name
  email = FFaker::Internet.free_email
  puts "#{first_name} #{last_name}, #{email}"
end
