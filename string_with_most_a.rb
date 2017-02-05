#taking a list of strings find out which string has the most a's in it

a = ["apple", "ball", "balance", "moon"]

def most_a(array)
  num_a = []
  array.each do |word|
    count = 0 
    while length >= 0
      if word[length] == "a"
        count += 1
      end
      length -= 1 
    end
    num_a << count
  end
  return num_a
end

p most_a(a)