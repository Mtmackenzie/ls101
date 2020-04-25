# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# Examples:

=begin
Input: positive n
Output: displayed right triangle
Rules: centered right, sides must have n starts

DS: integers, strings

Algo:
- in each line 9 spaces, 9 lines
- first line will contain 8 spaces, 1 star, centered right
(" " * 4) + ("*" * 1)
(" " * 3) + ("*" * 2)
(" " * 2) + ("*" * 3)
(" " * 1) + ("*" * 4)
(" " * 0) + ("*" * 5)

spaces = n - star
stars = 1

(1..n).times do {|star_n| puts (" " * (n - star_n)) + ("*" * star_n)
=end

def triangle(n)
  1.upto(n) {|star_n| puts (" " * (n - star_n)) + ("*" * star_n)}
end

triangle(5)

#     *
#   **
#   ***
# ****
# *****

triangle(9)

#         *
#       **
#       ***
#     ****
#     *****
#   ******
#   *******
# ********
# *********