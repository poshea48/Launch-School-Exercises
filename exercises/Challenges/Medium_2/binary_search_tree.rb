class Bst
  attr_reader :data, :left, :right
  def initialize(number)
    @data = number
    @left = nil
    @right = nil
  end

  def insert(number)
    if number <= data
      left.nil? ? @left = Bst.new(number) : left.insert(number) 
    else
      right.nil? ? @right = Bst.new(number) : right.insert(number)
    end
  end

  def each
    return to_enum(:each) unless block_given?
    
    left.each {|data| yield(data)} if left
    yield(data)
    right.each {|data| yield(data)} if right
  end
end
