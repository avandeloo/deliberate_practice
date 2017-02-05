# an array of strings, use #map to return an array of reversed strings

def reversed_strings(array)
  reversed_words = []
  array.map { |word| reversed_words << word.reverse}
  return reversed_words  
end 

#runner code

a = ["words", "are", "fun", "how", "you"]
p reversed_strings(a)
