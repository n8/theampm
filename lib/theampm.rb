require "theampm/version"
require 'chronic'

class Numeric
  # A convenience for writing: 3.am or 1130.am
  def am
    Chronic.parse("#{self} am")
  end

  def pm
    Chronic.parse("#{self} pm")
  end
  
  def to_time
    hour = self
    if hour < 12 || (hour >= 100 && hour < 1200)
      am
    elsif hour >= 24
      Chronic.parse hour.to_s
    else
      pm
    end
  end
end
