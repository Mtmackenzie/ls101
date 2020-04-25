# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

# Examples:

=begin
Input: array of nums
Output: integer
Rules: array will contain at least one integer
Problem: sum of 0, 0 + 1, 0 + 1 + 2, etc. until done
saving number into sum
add next number with sum, add this to sum

DS:arrays

Algo:
define a method called sum_of_sums, takes one param called ary
initialize a final_sum lv, set to 0
intialize a current_sum lv, set to 0
iterate over ary, param n
  - current_sum += n               
  - final_sum += current_sum       

return final_sum
=end

def sum_of_sums(ary)
  final_sum = 0
  current_sum = 0
  
  ary.each do |n|
    current_sum += n
    final_sum += current_sum
  end
  final_sum
end


p sum_of_sums([3, 5, 2]) == 21
p sum_of_sums([1, 5, 7, 3]) == 36
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35