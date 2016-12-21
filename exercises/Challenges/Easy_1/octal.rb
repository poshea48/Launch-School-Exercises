require 'pry'
class Octal
  def initialize(num_string)
    @digits = num_string.split('')
    @octal = 0
  end

  def to_decimal
    return @octal if @digits.any? {|digit| digit =~ /[^0-7]/}
    i = 0
    octal = 0
    @digits.map(&:to_i).reverse_each do |num|
      @octal += num * (8**i)
      i += 1
    end
    @octal
  end
end

octal = Octal.new('abc1z')
p octal.to_decimal























