# Triangle Sides
# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

=begin
Input: 3 integers (also float)
Output: symbol
Rules: two shortest sides added together must be greater than longest side, all sides must be great than 0
Problem: put the arguments into an array called lengths, sort. iterate over the array, based on conditions, returning a symbol.

DS: array, math

Algo:
define a method takes 3 param, n1, n2, n3
init ary, assign to array containing n1, n2, n3, sort
if any are 0, or if first two added together are not greater than the last element, return :invalid
elsif ary[0] == ary[1], or ary[1] == ary[2]
  if n1 == n2 == n3, :equilateral
  else
    return :isoc
else
  return :scalene

=end

def triangle(n1, n2, n3)
  ary = [n1, n2, n3].sort
  if ary.include?(0) || ary[0] + ary[1] < ary[2]
    return :invalid
  elsif ary[0] == ary[1] || ary[1] == ary[2]
    return :equilateral if ary[0] == ary[2]
    return :isosceles
  else
    return :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid