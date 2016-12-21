# input
#   decimal number as integer
#   binary string

# validation
#   invalid binary returns value of 0

# output
#   an array of events

# rules
#   1    = wink
#   10   = double blink
#   100  = close your eyes
#   1000 = jump 

#   10000 = reverse order of events

# alogrithm
#   convert decimal into binary string
#   start with rightmost digit
#   CONVERSION = {1 => 'wink', 10 => 'double blink', 100 => 'close your eyes', 1000 => 'jump'}
#   convert decimal to binary (to_s(2))
#     n = 1
#     binary.chars.reverse.each do |digit|
#       if digit == '1' 
#         result << CONVERSION[digit.to_i]
#         n *= 10
#       end
class SecretHandshake
  CONVERSION = {1 => 'wink', 10 => 'double blink', 100 => 'close your eyes', 1000 => 'jump'}

  def initialize(number)
    @binary = number.is_a?(Integer) ? number.to_s(2) : number
  end

  def commands
    if @binary.to_i > 10000
      @binary = (@binary.to_i - 10000).to_s
      shake_event(@binary).reverse
    else
      shake_event(@binary)
    end
  end

  private

  def shake_event(binary)
    result = []
    n = 1
    @binary.chars.reverse.each do |digit|
      result << CONVERSION[n] if digit == '1'
      n *= 10
    end
    result
  end
end

p SecretHandshake.new(4).commands



