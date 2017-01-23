require "./hacktive_record.rb"

class Movie < HacktiveRecord::Base

  attr_accessor :title, :duration, :director_id

end
