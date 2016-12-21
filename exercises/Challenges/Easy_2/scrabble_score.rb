class Scrabble
  
  POINTS = {
    1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
    2 => ["D", "G"],
    3 => ["B", "C", "M", "P"],
    4 => ["F", "H", "V", "W", "Y"],
    5 => ["K"],
    8 => ["J", "X"],
    10 => ["Q", "Z"]
    }.freeze

  def initialize(word)
    @word = word
  end

  def score
    score = 0
    return 0 if @word == nil
    @word.chars.each do |piece|
      POINTS.each do |points, letters|
        if letters.map(&:downcase).include?(piece.downcase)
          score += points
        end
      end
    end
    score
  end

  def self.score(string)
    Scrabble.new(string).score
  end
end

# scrabble = Scrabble.new
# #p scrabble.score

p Scrabble.score('alacrity')

