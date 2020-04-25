# Letter Swap
# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

# Examples:



=begin
take two
input: string, output: string
rules: at least one word (could be just one word)
DS: string, array

split string into array of strings
initialize variable, set to index 0. initialize another variable, set to index -1
reassign value at index 0 as last_letter and reassign value at index -1 as first_letter
join array to return a string


=end
def swap(string)
  array = string.split(" ").map do |word|
    first_letter = word[0]
    last_letter = word[-1]
    word[0] = last_letter
    word[-1] = first_letter
    word
  end
  array.join(' ')
end



=begin
split into array, iterate over each word
map
pop, unshift
+=

=end

# def swap(string)
#   array = string.chars
#   array.map! do |word|
#     first_letter = word.slice!(0)
#     last_letter = word.slice!(-1)
#     word = last_letter + word + first_letter
#   end
#   array.join(' ')
# end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'