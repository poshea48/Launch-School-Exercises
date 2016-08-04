def interleave(arr1, arr2)
  idx = 0
  new_arr = []
  while idx < arr1.length
    new_arr << arr1[idx] << arr2[idx]
    idx += 1
  end
  new_arr
end

a = [1,2,3,4,5,6]
b = ['one', 'two', 'three', 'four', 'five', 'six']

p interleave(a,b)