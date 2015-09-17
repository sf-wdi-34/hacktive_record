require 'ffaker'
require './app/models/speaker.rb'
require './app/models/talk.rb'

5.times do
  p ""
end

puts "Speakers"
puts "========"
Speaker.all.each do |speaker|
  p speaker
end


puts "Talks"
puts "========"
