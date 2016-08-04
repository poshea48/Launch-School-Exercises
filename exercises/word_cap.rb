require 'date'
def friday_13th(year)
  counter = 0
  (1..12).each do |month|
    if Date.new(year, month, 13).friday?
      counter += 1
    end
  end
  counter
end

p friday_13th(2015) # => 3
p friday_13th(1986) # => 1