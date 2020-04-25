# Write a method that takes two arguments, a positive integer and a boolean, 
# and calculates the bonus for a given salary. If the boolean is true, the bonus 
# should be half of the salary. If the boolean is false, the bonus should be 0.

# Examples:

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# The tests above should print true.

# def calculate_bonus(integer, boolean)
#   if boolean == true
#     integer / 2
#   else
#     0
#   end
# end

# puts calculate_bonus(2800, false)

def calculate_bons(salary, bonus)
  bonus ? (salary / 2) : 0
end

def calculate_bons(salary, bonus)
  bonus ? (salary / 2) : "nope"
end

puts calculate_bons(2800, false)