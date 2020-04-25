# Write a method that takes two arguments, a string and a positive integer, and 
# prints the string as many times as the integer indicates.
# repeat('Hello', 3)
# Input: two arguments, string and positive integer. Output: printed string

def repeat(string, integer)
  integer.times do
    puts string
  end
end

repeat('Hello', 3)