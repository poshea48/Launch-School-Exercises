# input
#   number
#   negative? valid? 

# output
#   check valid
#   return checksum, or remainder when luhn digits are added
#   add a check digit to make number valid, return original plus digit

# algorithm
#   digits = number.to_s.chars.map(&:to_i)
#   luhn_nums = []
#   digits.reverse.each do |digit|
#     luhn_nums.shift(luhn_formula(digit))
#   end
#   luhn_nums

#   def luhn_formula(digit)
#     result = 2 * digit
#     result = result >= 10 ? result -= 9 : result
#   end
require 'pry'
class Luhn
  attr_accessor :number
  
  def initialize(number)
    @number = number
    @digits = number.to_s.chars.map(&:to_i)
  end

  def addends
    @digits.reverse.each_with_index.map do |digit, index|
      index.odd? ? luhn_formula(digit) : digit
    end.reverse
  end

  def checksum
    addends.inject(:+)
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(number)
    new_num = number * 10
    if new(new_num).valid?
      new_num
    else
      loop do
        new_num += 1
        break if new(new_num).valid?
      end
      # remainder = new(new_num).checksum % 10
      # new_num + (10 - remainder)
    end
    new_num
  end

  private

  def luhn_formula(digit)
    result = 2 * digit
    result = result >= 10 ? result -= 9 : result
  end
end

p Luhn.create(837_263_756)
#p Luhn.new(1230).valid?






















