# Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

# Examples

=begin
Input: string
Output: output
Rules:
Problem: swap the first item with the second with a comma in between

DS:

Algo:
split the string into an array
'ary[1], ary[0]'

=end

# def swap_name(str)
#   ary = str.split
#   "#{ary[1]}, #{ary[0]}"
# end

def swap_name(str)
  str.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'