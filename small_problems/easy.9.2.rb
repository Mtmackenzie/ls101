# Double Doubles
# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

# Examples:
=begin
Input: integer
Output: integer
Rules: 
Problem: check if number is double number by first seeing if it is even or odd digits. if even, compare first half to second half reversed and see if it's the same (if not return false). if odd, compare first half to second half and see if it's the same, if not return false 
num.to_s.slice(0..num.size/2)

DS: integer, string, array

Algo:
define method double_number? with num as parameter
 
returns boolean

define method twice, num as param
  call double_number?(num), if true return the num itself and if false return number * 2
=end

def double_number?(n)
  if n.digits.size.even? 
    n.digits.reverse[0..n.digits.size/2 - 1] == n.digits.reverse[n.digits.size/2..-1]
  else
    return false
  end
end

def twice(n)
  double_number?(n) ? n : n * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10