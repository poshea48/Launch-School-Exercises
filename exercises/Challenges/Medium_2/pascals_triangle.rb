class Triangle
  attr_accessor :pascals, :row
  
  def initialize(row)
    @pascals = [[1]]
    @row = row
  end

  def rows
    loop do
      sub = [1]
      pascals.last.each_cons(2) do |num|
        sub << (num[0] + num[1])
      end
      pascals << sub.push(1)
      break if pascals.size == row
    end
    pascals
  end

  def last
    pascals.last
  end
end

# triangle = Triangle.new(20)
# p triangle.rows
