require 'ffaker'
require './models/speaker.rb'

5.times do
  first = FFaker::Name.last
  last = FFaker::Name.first
  email = FFaker::Internet.free_email
  # speaker = Speaker.new({})
end
