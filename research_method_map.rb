 a = [ "a", "b", "c", "d" ]

# collect is a synonym for map, they do the same thing
p a.collect { |x| x + "!" }         #=> ["a!", "b!", "c!", "d!"]
p a.map { |x| x + "!" }         #=> ["a!", "b!", "c!", "d!"]

# This is the equivalent code manually using an each loop
b = []
a.each do |x|
  b << x + "!"
end
p b

# with better variable names 
letters = ["a", "b", "c", "d"]
mapped_letters = []
letters.each do |letter|
  mapped_letters << letter + "!"
end
p mapped_letters

# map can be used with index, works the same, but allows us to keep track of index as well as element. Here, x * i is multiplying a string times a number (index)
p a.map.with_index { |x, i| x * i } #=> ["", "b", "cc", "ddd"]

# map is non-destructive because it does not change the original array's value
p a                               #=> ["a", "b", "c", "d"]

# Example: given an array of numbers, divided by 2 returns [1, 2, 2.5, 3, 4, 5]
numbers = [2, 4, 5, 6, 8, 10]
p numbers.map {|number| number / 2.to_f}

