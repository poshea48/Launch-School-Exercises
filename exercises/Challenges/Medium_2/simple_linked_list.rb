class Element
  attr_reader :datum, :next
  
  def initialize(number, next_element=nil)
    @datum = number
    @next = next_element
  end

  def tail?
    @next.nil?
  end

  def next=(number)
    @next = number
  end
end

class SimpleLinkedList
  def initialize
    @list = []
  end

  def push(number)
    element = Element.new(number)
    if @list.empty?
      @list.unshift(element)
      #binding.pry
    else
      element.next = @list.first
      @list.unshift(element)
    end
  end

  def size
    @list.size
  end

  def empty?
    @list.empty?
  end

  def peek
    return nil if @list.empty?
    @list.first.datum
  end

  def head
    @list.first
  end

  def pop
    @list.shift.datum
  end

  def self.from_a(data_structure)
    l = SimpleLinkedList.new
    return l if data_structure.nil? || data_structure.empty?
    
    data_structure.reverse.each do |obj|
      l.push(obj)
    end
    l
  end

  def to_a
    @list.map {|element| element.datum}
  end

  def reverse
    reversed = @list.reverse.map(&:datum)
    SimpleLinkedList.from_a(reversed)
  end
end
