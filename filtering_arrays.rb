def filter_all(array)
  words = []
  fix_num = []
  deci_num = []

  array.each do |item|
    if item.class == Fixnum
      fix_num << item
    elsif item.class == String
      words << item
    elsif item.class == Float
      deci_num << item
    end
  end        
  
  p words
  p fix_num
  p deci_num   

end

def filter_integers(array)
  integers = []
  
  array.each do |item|
    if item.class == Fixnum
      integers << item
    end
  end

  return integers

end

def filter_floats(array)
  floats = []

  array.each do |item|
    if item.class == Float
      floats << item
    end
  end

  return floats

end

def filter_strings(array)
  words = []

  array.each do |item|
    if item.class == String
      words << item
    end
  end  

  return words 
       
end

unfiltered_array = [5, 8.9, "hey", 10, "ask", 2.4, "why", 3.8, 2]

filter_all(unfiltered_array)

puts ""

p filter_strings(unfiltered_array)

puts ""

p filter_floats(unfiltered_array)

puts ""

p filter_integers(unfiltered_array)
