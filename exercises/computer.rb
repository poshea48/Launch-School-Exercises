def computer(english)
  conversion = {
    'zero' => 0,
    'one' => 1,
    'two' => 2,
    'three' => 3,
    'four' => 4,
    'five' => 5,
    'six' => 6,
    'seven' => 7,
    'eight' => 8,
    'nine' => 9
  }
  conversion.each do |word, num|
    english.gsub!(word, num.to_s)
  end

  #english.gsub!('by', ' ')
  eng_arr = english.split(' ')
  eng_arr.delete('by')

  loop do
    break if !eng_arr.include?('times') && !eng_arr.include?('divided')

    index_op = eng_arr.index('times') || eng_arr.index('divided')
    num1 = eng_arr[index_op - 1].to_i 
    num2 = eng_arr[index_op + 1].to_i
    operation = eng_arr[index_op]

    soln = case operation
           when 'divided'
            num1 / num2
           when 'times'
            num1 * num2
          end
    eng_arr.delete_at(index_op - 1)
    eng_arr.delete_at(index_op  -1)
    eng_arr[index_op-1] = soln

  end

  loop do
    break if !eng_arr.include?('plus') && !eng_arr.include?('minus')
       
    block = eng_arr.take(3)
    num1 = block[0].to_i
    operation = block[1]
    num2 = block[2].to_i
      
    
    soln = case operation
           when 'plus'
            num1 + num2
            
           when 'minus'
            num1 - num2
          end
  
    eng_arr.shift(3)
    eng_arr.unshift(soln)
  end
  eng_arr.first
end

p computer("two plus two") # => 4
p computer('seven minus six') # => 1
p computer('three minus one plus five minus 4 plus six plus 10 minus 4') # => 15
p computer('eight times four plus six divided by two minus two') # => 17 not 33
p computer('one plus four times two minus two') # => 8 not 7
p computer('nine divided by three times six') # => 18
 p computer('seven plus four divided by two"') # => 9
p computer('seven times four plus one divided by three minus two') # => 26
p computer('one plus four times three divided by two minus two') # => 5
p computer('nine divided by three times six') # => 18
