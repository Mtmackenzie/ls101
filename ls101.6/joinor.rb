# joinor method

# Write a method called joinor that will produce the following result:

# joinor([1, 2])                   # => "1 or 2"
# joinor([1, 2, 3])                # => "1, 2, or 3"
# joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
# joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

arr = [1]

def joinor(ary, punctuation=', ', conjunction='or')
  x = ary.size
  if x < 2
    ary.join
  elsif x == 2
    ary.join(" #{conjunction} ")
  else
    "#{ary.first(x - 1).join(punctuation)}#{punctuation}#{conjunction} #{ary.last}"
  end
end


p joinor(arr, ": ", "whatttt")