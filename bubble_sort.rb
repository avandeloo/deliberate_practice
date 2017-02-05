def bubble_sort(array)
  n = array.length
  # starts a loop
  loop do
    swapped = false
    # 7 times do
    (n-1).times do |i|
      # checks if the current item in the array is greater than the next
      if array[i] > array[i+1]
        # 1, 4 = 4, 1 switches the values without 
        array[i], array[i+1] = array[i+1], array[i]
        # changes swapped from false to true indicating that a swap occured
        swapped = true
      end
    end
    # stops the loop if swap doesn't occur
    break if !swapped
  end
  # returns sorted array
  array
end


a = [1, 4, 1, 3, 4, 1, 3, 3]
i = 0
a[i], a[i+1]=a[i+1], a[i]

p bubble_sort(a)