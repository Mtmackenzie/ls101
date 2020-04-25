# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

=begin
Input: odd integer
Output: diamond in n x n grid
Rules: argument always odd

DS: puts string

Algo:

init counter = 1

loop
("*" * counter).center(n)
counter += 2
break if counter > n

=end


# Examples

# diamond(1)

# *
# diamond(3)

# *
# ***
# *
# # diamond(9)
#     *         
#   ***
#   *****
# *******
# *********
# *******
#   *****
#   ***
#     *

def diamond(n)
  counter = 1
  
  loop do
    puts ("*" * counter).center(n)
    break if counter == n
    counter += 2
  end
  
  loop do
    counter -= 2
    puts ("*" * counter).center(n)
    break if counter == 1
  end
  
end

diamond(15)