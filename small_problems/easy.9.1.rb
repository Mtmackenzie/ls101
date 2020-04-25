# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

# Example:

=begin
Input: array, hash
Output: greeting
Rules:
Problem: access values in an array and a hash in order to print out a sentence using that data (string interpolation)

DS: str, hash, array

Algo:
define a method that takes two params, ary and hsh

Hello, #{ary.join(" ")}! Nice to have a #{hsh[:title]} #{hsh[:occupation]) around.
=end

def greetings(ary, hsh)
  "Hello, #{ary.join(" ")}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."
end


p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == 'Hello, John Q Doe! Nice to have a Master Plumber around.'