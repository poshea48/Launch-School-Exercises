class Diamond
  LINES = ("A".."Z").to_a

  def self.make_diamond(letter)
    Diamond.new(letter).make_diamond
  end

  def initialize(letter)
    @center_letter = letter
    @spaces = make_spaces
  end

  def make_spaces
    spaces = Hash.new(0)
    space = 1
    ("B".."Z").each do |letter|
      spaces[letter] = space
      space += 2
    end
    spaces
  end

  def center_num
    (LINES.index(@center_letter) + 1) * 2 -1
  end

  def first_line
    "A"
  end

  def other_line(letter)
    "#{letter}#{' ' * @spaces[letter]}#{letter}"
  end

  def make_diamond
    return first_line + "\n" if @center_letter == "A"
    result = []
    result << first_line.center(center_num) + "\n"
    ("B"..@center_letter).each {|letter| result << other_line(letter).center(center_num) + "\n"}
    result << result.reverse[1..-1]
    
    result.join
  end
end

puts Diamond.make_diamond("C")

letters = ["A", "B", "C"] + ["C"] + ["A", "B", "C"]

























