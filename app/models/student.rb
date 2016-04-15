class Student < ActiveRecord::Base
  def to_s
    # if self.first_name && self.last_name
    #   self.first_name + " " + self.last_name
    # elsif self.first_name
    #   self.first_name
    # elsif self.last_name
    #   self.last_name
    # else
    #   ""
    # end
    self.first_name + " " + self.last_name
  end
end