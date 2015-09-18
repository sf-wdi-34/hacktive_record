require "./hacktive_record.rb"

class Talk < HacktiveRecord::Base

  attr_accessor :topic, :duration, :speaker_id

end
