# input
#   buffer size

# output
#   circular buffer

# rules
#   start with empty buffer of size n 
#   add element to right
#   buffer.read will remove oldest

# algorithm
#   create an array of n length
#   add first element to index 0 and mark that as oldest
#   buffer.write will add element to index + 1
#   buffer.read will remove buffer[index] oldest will move to index + 1

  #CircularBuffer

#require 'pry'
class CircularBuffer
  class BufferEmptyException < Exception; end
  class BufferFullException < Exception; end
  attr_reader :buffer
  def initialize(size)
    @buffer = []
    @max_size = size
  end

  def write(element)
    return if element == nil
    raise BufferFullException if @buffer.size == @max_size
    @buffer << element
  end

  def write!(element)
    return if element == nil
    if @buffer.size == @max_size
      read
      @buffer.push(element)
    else
      write(element)
    end
  end

  def read
   raise BufferEmptyException if @buffer.empty?
   @buffer.shift
  end

  def clear
    @buffer = []
  end
end










