# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# Example:
=begin
Input: two arrays
Output: new array
Rules: non empty, contain same number of elements

DS:

Algo: start with first array, then second
initialize a lv results = []
take element at index 0 from first array
  insert el into new array
repeat with second array
increment index or each_with_index until done iterating over second array

=end

def interleave(ary1, ary2)
  results = []
  ary1.each_with_index do |el, i|
    results << el << ary2[i]
  end
  
  results
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']