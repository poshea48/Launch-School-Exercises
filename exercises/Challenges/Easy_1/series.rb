require 'pry'
class Series
  def initialize(digit_string)
    @digits = digit_string.split('').map(&:to_i)
    @result = []
  end

  def slices(n)
    raise ArgumentError if n > @digits.size
    # @digits.each_index do |index|
    #   slice = @digits.slice(index, n)
    #   @result << slice if slice.size == n
    # end
    @digits.each_cons(n) {|slice| @result << slice}
    @result
  end
end

new_one = Series.new('01234')
p new_one.slices(3)

