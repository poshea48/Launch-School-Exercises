# input
#   month and year
#   .day(day, day_description)

# output
#   calculates date of meetups
#   Date object

# Abstraction
#   given month and year and day and day_description use Date class to find the date

# algorithm
#   def day(:day, :day_description)
#     days = (1..31).select {|day| Date.new(year, month, day).day?}
#     day = days.select {|day| day_match?(day, description)}
#     Date.new(year, month, day)
#   end

#   first  => 1..7
#   second => 8..14
#   third  => 15..21
#   last   => -7..-1
#   teenth => 13..19
require 'date'
require 'pry'
class Meetup
  
  SCHEDULE_RANGE = {
    :first => (1..7).to_a, 
    :second => (8..14).to_a, 
    :third => (15..21).to_a,
    :fourth => (22..28).to_a,
    :last => (-7..-1).to_a,
    :teenth => (13..19).to_a
  }

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, schedule)
    Date.new(@year, @month, day_in_month(weekday, schedule))
  end

  private

  def day_in_month(weekday, schedule)
    SCHEDULE_RANGE[schedule].detect {|day| Date.new(@year, @month, day).public_send(weekday.to_s + '?')}
  end
end
p Meetup.new(8, 2013).day(:monday, :teenth)
p Meetup.new(9, 2013).day(:tuesday, :teenth)
# date = Date.new(2013, 8, 19)
# p Meetup.new(8, 2013).day(:monday, :teenth) == date












