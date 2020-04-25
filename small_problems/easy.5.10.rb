# Bannerizer
# Write a method that will take a short line of text, and print it within a box.

# Example:

=begin
input: string, output: string

rules: centered? small amounts of text. empty string returns empty box.

DS: string

algo:
count amount of spaces in string. build box based on the amount of spaces, plus two
use string interpolation to insert text into box
=end

def print_in_box(string)
  puts "+-" + '-'*string.length + "-+"
  puts '| ' + ' '*string.length + ' |'
  puts '| ' + string + ' |'
  puts '| ' + ' '*string.length + ' |'
  puts "+-" + '-'*string.length + "-+"
end

print_in_box("Hola Absa")


# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
# You may assume that the input will always fit in your terminal window.