# input
#   3 x 4 grid of pipes underscores and spaces

# output
#   number string that represents grid or ?
#   if not right size return error

# abstraction
#   convert binary font to a string containg   0 or 1
#     uses pipes and underscores, 4 rows high and 3 columns wide
#     input correct size but not recognizable => "?"
#     input not correct size => error

#   update program to recognize multi-character binary strings
#     replacing garbled numbers with "?"

#   update program to recognize 0-9
#     individually
#     part of a larger string

#   update program to handle multiple numbers, one per line
#     serval line => join lines with commas
#  _ ............
# | |  |
# |_|  |
# .......

# zero = <<-NUMBER.chomp
#  _
# | |
# |_|

#   NUMBER

# one = <<-NUMBER.chomp

#   |
#   |

#     NUMBER
require 'pry'
class OCR
  OCRS = {
    '0' => [" _ ", "| |", "|_|"],
    '1' => ["   ", "  |", "  |"],
    '2' => [" _ ", " _|", "|_ "],
    '3' => [" _ ", " _|", " _|"],
    '4' => ["   ", "|_|", "  |"],
    '5' => [" _ ", "|_ ", " _|"],
    '6' => [" _ ", "|_ ", "|_|"],
    '7' => [" _ ", "  |", "  |"],
    '8' => [" _ ", "|_|", "|_|"],
    '9' => [" _ ", "|_|", " _|"]
  }

  attr_reader :input
  def initialize(input)
    @input = input.gsub("\n", ' ')
    @input_array = binary_to_array(input)
    #binding.pry
  end

  def convert_one_number(line)
    string = OCRS.values.select {|text| text.join == line}
    OCRS.key(string.join)
  end

  def binary_to_array(text)
    result = []
    (0...(text.size + 1) / 3).each_slice(3) do |index_slice|
      num = []
      text.lines.each do |line|
        num << line[index_slice[0]..index_slice[-1]]
      end
      result << num.join
    end
    result
  end

  def convert
    @input_array.map {|line| convert_one_number(line)}
  end
end
text = <<-NUMBER.chomp
 _
|_|
|_|

    NUMBER

huh = OCR.new(text)
p huh.convert


 # text = "       _     _           _\n  |  || |  || |     || || |\n  |  | _|  ||_|  |  ||_||_|\n"
 # require 'pry'








#  split_text = (text + "\n").lines#  => ["       _     _           _\n  |  || |  || |     || || |\n  |  | _|  ||_|  |  ||_||_|\n"]
# p split_text.map(&:chomp).each_slice(4)

# # result = []
# (0...split_text[0].size).each_slice(3) do |index_slice|
#   result << split_text.map { |line| line[index_slice[0]..index_slice[2]]}
# end




















