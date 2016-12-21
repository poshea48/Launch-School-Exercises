class Fixnum
  ROMANS = {
    "M"  => 1000,
    "CM" => 900,
    "D"  => 500,
    "CD" => 400,
    "C"  => 100,
    "XC" => 90,
    "L"  => 50,
    "XL" => 40,
    "X"  => 10,
    "IX" => 9,
    "V"  => 5,
    "IV" => 4,
    "I"  => 1
  }
  
  def to_roman
    numerals = ''
    number = self
    n = 1000
    ROMANS.each do |numeral, divisor|
      if number >= divisor
        until number < divisor
          number -= divisor
          numerals << numeral
        end
      end
    end
    numerals
  end
end

p 34.to_roman




#   def to_roman
#     next_in = 0
#     number = self
#     numerals = ''
#     loop do
#       break if number == 0
#       if number >= 1000
#         next_in, number = number.divmod(1000)
#         next_in.times {numerals << "M"}
#       elsif number >= 100
#         next_in, number = number.divmod(100)
#         if next_in == 9
#           numerals << 'CM'
#         elsif next_in >= 5
#           numerals << "D"
#           (5 - next_in).times {numerals << 'C'}
#         elsif next_in == 4
#           numerals << "CD"
#         else
#           next_in.times {numerals << 'C'}
#         end
#       elsif number >= 10
#         next_in, number = number.divmod(10)
#         if next_in == 9
#           numerals << 'XC'
#         elsif next_in >= 5
#           numerals << 'L'
#           (next_in - 5).times {numerals << 'X'}
#         elsif next_in == 4
#           numerals << 'XL'
#         else
#           (next_in).times {numerals << "X"}
#         end
#       else
#         if number == 9
#           numerals << 'IX'
#         elsif number >= 5
#           numerals << 'V'
#           (number - 5).times {numerals << 'I'}
#         elsif number == 4
#           numerals << 'IV'
#         else
#           (number).times {numerals << 'I'}
#         end
#         break
#       end
#     end
#     numerals
#   end
# end

p 325.to_roman

      
  


