# input
#   phone number of varying formats, 10 or 11 digits
#   valid?
#   string or integer?

# output
#   10 consecutive digit string

# rules
#   number.size < 10  => bad number
#   number.size == 10 => good number
#   number.size == 11 => if number[0] == 1, delete, then use remaining 10
#   number.size == 11 => if number[0] != 1, bad number
#   number.size > 11  => bad number

# algorithm
#   digits = number.scan(/[1-9]/)
#   if digits.size == 10
#     digits.join
#   elsif digits.size == 11
#     return '0000000000' if digits[0] != 1
#     digits[1..-1].join
#   else
#     '0000000000'
#   end
require 'pry'
class PhoneNumber
  INVALID = '0000000000'
  attr_reader :digits
  def initialize(number)
    @number = number
    @digits = @number.scan(/[0-9]/)
  end

  def number
    return INVALID if @number.match(/[a-zA-Z]/)
    if digits.size == 10
      digits.join
    elsif digits.size == 11
      return INVALID if digits[0] != '1'
      digits[1..-1].join
    else
      INVALID
    end
  end

  def area_code
    "#{number[0..2]}"
  end

  def to_s
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
  end
end

p PhoneNumber.new('19876543210').number

    