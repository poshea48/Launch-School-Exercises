# require 'pry'
# class BeerSong

#   attr_reader :lyrics
#   def initialize
#     @song = {}
#     99.downto(3).each do |line| 
#       @song[line] = "#{line} bottles of beer on the wall, #{line} bottles of beer.\n" \
#       "Take one down and pass it around, #{line - 1} bottles of beer on the wall."
#     end
#     @song[2] = "2 bottles of beer on the wall, 2 bottles of beer.\n" \
#       "Take one down and pass it around, 1 bottle of beer on the wall."
#     @song[1] = "1 bottle of beer on the wall, 1 bottle of beer.\n" \
#       "Take it down and pass it around, no more bottles of beer on the wall."
#     @song[0] = "No more bottles of beer on the wall, no more bottles of beer.\n" \
#       "Go to the store and buy some more, 99 bottles of beer on the wall."
#     @lyrics = @song.values.join(' ')
#   end

#   def verse(line)
#     @song[line]
#   end

#   def verses(start_line, end_line=start_line)
#     result = ''
#     start_line.downto(end_line).each do |line|
#       result << @song[line]
#     end
#     result
#   end
# end

# beer = BeerSong.new
# puts beer.lyrics

# input
#   instance method verse(n)
#   instance method verses(start, end)
#   instance method lyrics

# output
#   string of line n of beer song
#   string of beer song starting at line start and ending and line end
#   string of entire song 99 bottles to 0 bottles

# Abstraction
#   generic verse for lines 99-3
#   verse for 2 
#   verse for 1
#   verse for 0

# algorithm
#   "#{n} bottles of beer on the wall, #{n} bottles of beer.\n" \
#   "Take one down and pass it around, #{n-1} bottles of beer on the wall.\n"

#   "2 bottles of beer on the wall, 2 bottles of beer.\n" \
#   "Take one down and pass it around, 1 bottle of beer on the wall.\n"

#   "1 bottle of beer on the wall, 1 bottle of beer.\n" \
#   "Take one down and pass it around, no more bottles of beer on the wall.\n"

#   "No more bottles of beer on the wall, no more bottles of beer.\n" \
#   "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
class BeerSong
  
  def verse(n)
    case n
    when 3..99
      then generic_line(n)
    when 2
      then two_left_line
    when 1
      then one_left_line
    when 0
      then last_line
    end
  end

  def verses(start_line, end_line)
    (start_line).downto(end_line).map {|line| verse(line)}.join("\n")
  end

  def lyrics
    verses(99, 0)
  end

  private

  def generic_line(n)
    "#{n} bottles of beer on the wall, #{n} bottles of beer.\n" \
    "Take one down and pass it around, #{n - 1} bottles of beer on the wall.\n"
  end

  def two_left_line
    "2 bottles of beer on the wall, 2 bottles of beer.\n" \
    "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end

  def one_left_line
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def last_line
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
end

p BeerSong.new.verses(99,98)

































