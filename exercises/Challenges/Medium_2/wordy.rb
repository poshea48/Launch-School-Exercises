# input
#   takes a word problem

# output
#   answer as an integer

# Abstraction
#   word_problem = x.scan(/[+-]?[\d]+|plus|minus|multiplied|divided/)

#   i = 0
#   sub_phrase = x[1..i+3]
#   num1 = sub_phrase[0].to_i
#   num2 = sub_phrase[2].to_i
#   operation = sub_phrase[1]
require 'pry'
class WordProblem
  def initialize(question)
    @numbers = question.scan(/[+-]?\d+/).map(&:to_i)
    @operations = question.scan(/plus|minus|multiplied|divided/)
    #binding.pry
  end

  def answer
    raise ArgumentError if @operations.empty?
    @operations.each do |operation|
      @numbers[0..1] = convert(operation, @numbers[0..1])
    end
    @numbers.join.to_i
  end

  private

  def convert(operation, nums)
    num1, num2 = nums
    #binding.pry

    case operation
      when 'plus'
        num1 + num2
      when 'minus'
        num1 - num2
      when 'multiplied'
        num1 * num2
      when 'divided'
        num1 / num2
      else
        raise ArgumentError
    end
  end
end


















        