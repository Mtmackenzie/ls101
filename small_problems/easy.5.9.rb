# ddaaiillyy ddoouubbllee
# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

# Examples:

=begin
input: string, output: new string with only one consecutive letter (all consecutive duplicates removed)

rules: do not use squeeze. string can be empty or just one letter. string can contain nonalphabet characters.

DS: string

algo:
define method that takes a string, initiate new variable set to empty string
iterate over each character of string argument using each_char
add the character concatenated to the current string if the last element in the string is not the current character
return new string
=end

def crunch(string)
  new_string = ''
  string.each_char { |char| new_string += char if new_string[-1] != char}
  new_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') #== 'a'
p crunch('') #== ''