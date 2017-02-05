#iterate through a collection of numbers and filter out anything less than 25

#Steps 

# 1 - write a method that takes in an array
# 2 - iterate through the array
# 3 - use if statement to collect numbers 25 or greater
# 4 - return greater number collection

def greater_than_25(array)
  greater_num = []
  array.each do |num|
    if num >= 25
      greater_num << num
    end
  end
  return greater_num
end

#runner code
p greater_than_25([36, 12, 44, 42, 13, 3, 79, 5, 21])