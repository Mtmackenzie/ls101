title = "Flintstone Family Members"

# count, then subtract from 40, divide by two and insert spaces repeatedly before and after

n = title.count(title)

t = (40 - n)/2

t.times do
  title.prepend(" ")
  title << " "
end

puts title
puts title.center(40)