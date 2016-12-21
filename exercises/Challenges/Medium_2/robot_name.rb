# input

# output
#   random five character name

# algorithm
#   CHAR_LETTERS = ("A".."Z").to_a
#   CHAR_NUMS = ('1'..'9').to_a
#   name = ''
#   2.times {name << CHAR_LETTERS.sample}
#   3.times {name << CHAR_NUMS.sample}
require 'pry'
class Robot
  CHAR_LETTERS = ("A".."Z").to_a
  CHAR_NUMS = ('1'..'9').to_a

  attr_reader :name

  @@names = []

  def initialize
    @name = set_name
    reset if @@names.include?(@name)
    @@names << @name 
  end

  def reset
    @name = ''
    set_name
    reset if @@names.include?(@name)
    @@names << @name
  end

  private

  def set_name
    name = ''
    2.times {name << CHAR_LETTERS.sample}
    3.times {name << CHAR_NUMS.sample}
    name
  end
end



