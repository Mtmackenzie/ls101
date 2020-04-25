# Using the multiply method from the "Multiplying Two Numbers" problem, 
# write a method that computes the square of its argument (the square is 
# the result of multiplying a number by itself).

# Example:

# square(5) == 25
# square(-8) == 64

def multiply(x, y)
  x * y
end

def square(z)
  multiply(z, z)
end

# p square(-8)

# What if we wanted to generalize this method to a "power to the n" type 
# method: cubed, to the 4th power, to the 5th, etc. 
# How would we go about doing so while still using the multiply method?

def power_to_the_n(x, n)
  if n > 1
    multiply(x, x) * (n-1)
  else
    x ** n
  end
end

p power_to_the_n(0, 0)