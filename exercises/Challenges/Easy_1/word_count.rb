require 'pry'
class Phrase
  def initialize(phrase)
    @split_phrase = phrase.downcase.scan(/\b[\w']+\b/)  #(/\w+'?\w+|\w+/)#.delete_if {|word| word == ''}.map(&:downcase)
  end

  def word_count
    results = Hash.new(0)
    @split_phrase.each do |word|
      results[word] += 1 #if word =~ /[A-Za-z1-9]/
    end
    results
  end
end

phrase = Phrase.new("First: don't laugh. Then: don't cry.")
p phrase.word_count