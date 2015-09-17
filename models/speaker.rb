require "./hacktive_record.rb"

class Speaker < HacktiveRecord::Base

  attr_accessor :first_name, :last_name, :email, :id

  # def initialize(args)
  #   @first_name = args[:first_name]
  #   @last_name = args[:last_name]
  #   @email = args[:email]
  # end

end
