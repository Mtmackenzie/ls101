# Double Char (Part 1)
# Write a method that takes a string, and returns a new string in which every character is doubled.

# Examples:

=begin
Input: string
Output: string
Rules: double every character as is, return new string
Problem: use map to transform each character into a string of its double, connect back together as a new string object

DS: string, array

Algo:
define repeater method, str
split str into characters array, call map on it, in argument use char
multiply char times two, join
=end

def repeater(str)
  str.chars.map {|char| char * 2}.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''