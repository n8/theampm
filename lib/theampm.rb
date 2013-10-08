require "theampm/version"
require 'chronic'

class Numeric
  # A convenience for writing: 3.am or 1130.am
  def am
    Chronic.parse("#{self.to_s} am")
  end

  def pm
    Chronic.parse("#{self.to_s} pm")
  end
  
  def to_time
    hour = self
    if hour < 12 || (hour >= 100 && hour < 1200)
      Chronic.parse("#{self.to_s} am")
    elsif hour >= 24
      Chronic.parse("#{self.to_s}")
    else
      Chronic.parse("#{self.to_s} pm")
    end
  end
end
