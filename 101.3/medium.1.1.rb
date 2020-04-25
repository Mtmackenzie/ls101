# For this practice problem, write a one-line program that creates the 
# following output 10 times, with the subsequent line indented 1 space to the right:

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

# print output but add a space to the front each time. Prepend mutates caller.

output = "The Flintstones Rock"

10.times do
  puts output.prepend(" ")
end