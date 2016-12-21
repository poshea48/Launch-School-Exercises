# "whats the matter with kansas."  => "whats eht matter htiw kansas"
# output => successive words separated by a single space with period at end
# odd words copied in reverse
require 'pry'
class OddWords
  def initialize(character_set)
    @character_set = character_set.gsub!(/\..*/, '')
    @result = []
  end

  def odd_it
    @character_set.split.each_with_index do |char, index|
      #raise "Not a valid input" if 
      index.odd? ? @result << char.reverse : @result << char
    end
    @result.join(' ') + '.'
  end
end

odd = OddWords.new("   how now brown cow    meow       .")
p odd.odd_it