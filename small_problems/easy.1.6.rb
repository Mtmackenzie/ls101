# Write a method that takes one argument, a string containing one or more words, 
# and returns the given string with all five or more letter words reversed. Each 
# string will consist of only letters and spaces. Spaces should be included only 
# when more than one word is present.

# input: string, output: string

# split string iterate each word
# if word count >= 5 reverse (mutate)
# else word
# join new string together (same order)


# Examples:

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

def reverse_words(string)
  array = []
  string.split(' ').each do |word|
    if word.size >= 5
      array << word.reverse
    else
      array << word
    end
  end
  puts string.join(' ')
end

reverse_words("Lavaaa Lamp")
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

  