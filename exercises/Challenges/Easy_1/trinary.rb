class Trinary
  def initialize(tri_num)
    @tri_num = tri_num.split('')
    @num = 0
  end

  def to_decimal
    return @num if @tri_num.any? {|digit| digit =~ /[^0-2]/}
    i = 0
    @tri_num.map(&:to_i).reverse_each do |n|
      @num += n * 3**i 
      i += 1
    end
    @num
  end
end

tri = Trinary.new('0a1b2c')
p tri.to_decimal