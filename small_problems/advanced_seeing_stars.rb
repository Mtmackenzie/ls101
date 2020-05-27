# Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.

def star(n)
  half = n/2
  half.times {puts "***"}
  puts '*' * n
  half.times {puts "***"}
end

p star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *