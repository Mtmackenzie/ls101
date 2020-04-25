# The || operator returns a truthy value if either or both of its operands are 
# truthy, a falsey value if both operands are falsey. The && operator returns 
# a truthy value if both of its operands are truthy, and a falsey value if 
# either operand is falsey. This works great until you need only one of two 
# conditions to be truthy, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments, 
# and returns true if exactly one of its arguments is truthy, false otherwise.

# Examples:

# Input two arguments, output return true or false. One has to be true, and one has to be false.
# def xor two arguments
# argument - boolean. boolean into an array, if that array include both true and false
# return false if it doesn't
# if returns nil, is it false?

# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

def xor?(arg_one, arg_two)
  arguments = [arg_one, arg_two]
  arguments.include?(true) && arguments.include?(false)
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false