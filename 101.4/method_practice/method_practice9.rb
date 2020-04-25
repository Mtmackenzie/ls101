# As we have seen previously we can use some built-in string methods to change the case of a string.
# A notably missing method is something provided in Rails, but not in Ruby itself...titleize. 
# This method in Ruby on Rails creates a string that has each word capitalized as it would be 
# in a title. For example, the string:

words = "the flintstones rock"
# would be:

# words = "The Flintstones Rock"
# Write your own version of the rails titleize implementation.

# input: string, output: string with each word first letter capitalized
# break apart string by words, put into array, upcase at index 0 of each word
# change new array into string again

# def titleize(string)
#   array = string.split
#   array.each do |word|
#     word.capitalize!
#   end
#   array.join(' ').to_s
# end

# p titleize(words)

# LS solution
p words.split.map { |word| word.capitalize }.join(' ')
