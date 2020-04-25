# Given the following data structure, return a new array containing the 
# same sub-arrays as the original but ordered logically by only taking 
# into consideration the odd numbers they contain.
# sort and odd?
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
# The sorted array should look like this:

# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

new_arr = arr.sort_by do |sub_array|
  sub_array.select do |integer|
    integer.odd?
  end 
end 

p new_arr