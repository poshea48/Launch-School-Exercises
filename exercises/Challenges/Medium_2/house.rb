# input
#   lines to poem

# output
#   starting with first line read line then one behind it until end

# Abstraction
#   line 0 "This is (the house that Jack built)"

#   line 1 "This is (the malt)\n (that lay in)" + line 0

#   line 2 "This is (the rat)\n (that ate)" line 1

#   line 0 => "This is" + line[0] + "\n"
  
#   line 1 => "This is" + line[0] + "\n" + line[1] + verse0

# algorithm
#   verses = pieces.reverse

#   Line0 == verses[0][0] + \n + verses[0][1]

#   Line1 == verses[1][0] + \n + verses[1][1] + Line0

#   Line2 == verses[2][0] + \n + verses[2][1] + Line1

#   pieces[2][0] + \n + pieces[2][1] + pieces[1][0] + pieces[0]
require 'pry'
class House

  def self.recite
    (0...pieces.size).map do |line|
      "This is #{verse(line)}\n"
    end.join("\n")
  end

  def self.verse(line)
    verses = pieces.reverse
    return verses[0][0] if line == 0
    "#{verses[line][0]}\n#{verses[line][1]} " + verse(line - 1)
  end

  private

  def self.pieces
    [
      ['the horse and the hound and the horn', 'that belonged to'],
      ['the farmer sowing his corn', 'that kept'],
      ['the rooster that crowed in the morn', 'that woke'],
      ['the priest all shaven and shorn', 'that married'],
      ['the man all tattered and torn', 'that kissed'],
      ['the maiden all forlorn', 'that milked'],
      ['the cow with the crumpled horn', 'that tossed'],
      ['the dog', 'that worried'],
      ['the cat', 'that killed'],
      ['the rat', 'that ate'],
      ['the malt', 'that lay in'],
      ['the house that Jack built.']
    ]
  end
end

