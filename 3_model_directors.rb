require 'ffaker'
require './models/director.rb'

5.times do
  first = FFaker::Name.last
  last = FFaker::Name.first
  email = FFaker::Internet.free_email
  # director = Director.new({})
end
