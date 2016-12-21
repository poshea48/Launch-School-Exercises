require 'pry'
class SumOfMultiples
  
  def initialize(*nums)
    @num_array = nums.empty? ? [3,5] : nums
    @result = []
  end

  def self.to(end_num)
    SumOfMultiples.new.to(end_num)
  end

  def to(end_num)
    return 0 if end_num == 1
    (1...end_num).each do |number|
      @result << number if @num_array.any? {|multiple| number % multiple == 0}
    end
    @result.inject(:+)
  end
end

#p sum.to(20)
p SumOfMultiples.to(1000)

