odd, even = [1, 2, 3].partition do |num|
  num % 2 == 1
end

p odd
p even