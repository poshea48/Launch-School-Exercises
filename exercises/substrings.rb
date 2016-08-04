def substrings(str)
  idx = 0
  idx_range = (0..str.length - 1)
  arr = []
  while idx < str.length
    idx_range.each do |i|
      if str[idx..i].length > 1
        arr << str[idx..i]
      else
        arr
      end
    end
    arr
    idx += 1
  end
  arr
end

 #p substrings("band") # => ['ba', 'ban', 'band', 'an', 'and', 'nd']
# p substrings('world')
# p substrings('ppop')

def palindrome(str)
  sub_arr = substrings(str)
  new_arr = []
  sub_arr.each do |word|
    new_arr << word if word == word.reverse
  end
  new_arr
end
  
# idx = 0
#   pals = []
#   while idx < arr.length
#     if arr[idx].split('') == arr[idx].split('').reverse
#       pals << arr[idx]
#     else
#       pals
#     end
#     idx += 1
#   end
#   pals
# end

p palindrome("ppoptotsosjob")

def largest_pal(str)
  pal_arr = palindrome(str)
  largest = ''
  pal_arr.each do |word|
    largest << word if word.length > largest.length
  end
  largest
end

p largest_pal("tootpopoo")
