# input
#   hour digit, minute digit
#   class method at(hour, minute)

# output
#   time format

# algorithm
#   def self.at(hour, minutes=0)
#     @hour = hour.to_s
#     @minutes = minutes.to_s
#   end

#   def +(minutes)
#     hour, minutes = minutes.divmod(60)
#     @hour += hour
#     @minutes += minutes
#   end

#   def -(minutes)
#     hour, minutes = minutes.divmod(60)
#     @hour -= hour
#     @minutes -= minutes
#   end

#   def to_s
#     format('%02d':'%02d', @hour, @minutes)
#   end
require 'pry'
class Clock

  def initialize(hour, minutes)
    @hour = hour
    @minutes = minutes
  end
  
  def self.at(hour, minutes=0)
    Clock.new(hour, minutes)
  end

  def +(minutes)
    hour, minutes = minutes.divmod(60)
    @hour += hour
    @minutes += minutes
    to_s
  end

  def -(minutes)
    hour, minutes = minutes.divmod(60)
    @hour -= hour
    @minutes -= minutes
    if @minutes < 0
      @hour -= 1
      @minutes = -@minutes
    end
    to_s
  end

  def ==(other)
    to_s == other.to_s
  end

  def to_s
    @hour %= 24
    format('%02d:%02d', @hour, @minutes)
  end
end


p Clock.at(10) - 90























