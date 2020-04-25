# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

# Example
=begin
Input: takes two arrays
Output: array with all values from argument arrays
Rules: no duplicates in returned array
order? just first and second, no dups

DS: array

Algo:
define method merge with two params, ary1 and ary2
initialize lv results = ary1.uniq
iterate over ary2 using each, add the el to results (<<) if the object is not already present in results (include)
return results
=end

def merge(ary1, ary2)
  results = ary1.uniq
  ary2.each {|el| results << el unless results.include?(el)}
  results
end


p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge([1, 1, 5], [5, 6, 9]) == [1, 5, 6, 9]