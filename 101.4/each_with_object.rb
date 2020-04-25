[1, 2, 3].each_with_object([]) do |num, array|
  p array << num if num.odd?
end

