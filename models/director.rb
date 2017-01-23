require "./hacktive_record.rb"

class Director < HacktiveRecord::Base

  attr_accessor :first_name, :last_name, :email, :phone, :id

  def full_name
    "#{first_name} #{last_name}"
  end

end
