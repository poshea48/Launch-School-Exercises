def substring(str, num1, num2=nil)
  if num2 == nil
    str[num1]
  else  
    str[num1..num2]
  end
end








p substring("honey", 2, 13) #=> "ney"
p substring("honey", 2) #=> "n"