# Tri-Angles
# A triangle is classified as follows:

# right One angle of the triangle is a right angle (90 degrees)
# acute All 3 angles of the triangle are less than 90 degrees
# obtuse One angle is greater than 90 degrees.
# To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

# Examples:

=begin
Input: 3 integer parameters
Output: symbol
Rules: could be invalid (sum of angles != 180, if any of the angles are == 0)
Problem: values checking valid triangle, then highest angle and seeing if it's greater than, equal to, or less than 90. Return key out of the hash.

DS: array?

Algo:
def triangle, 3 parameters ang1, ang2, ang3
put all angs into an array, sort
check if it's valid: check to see that the angles add up == 180 (sum), also none are 0 (include?)
, if not return :invalid
find the highest angle, consider the ary[-1]
  if highest angle is less than 90, return :acute
  if it's == 90, return :right
  if it's > 90, return :obtuse
=end

def triangle(ang1, ang2, ang3)
  ary = [ang1, ang2, ang3].sort
  return :invalid if ary.sum != 180 || ary.include?(0)
  if ary[-1] < 90
    :acute
  elsif ary[-1] == 90
    :right
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid