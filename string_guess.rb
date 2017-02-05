#given a random string from an array, loop through upto 10 times for user to guess string using gets.chomp

def guess_game(array)
  puts "Welcome to the guessing game!"
  puts ""
  random_word = array.shuffle[0]
  10.times do 
    puts "Guess a word:"
    array.shuffle
    guess = gets.chomp 
    if guess == random_word
      puts "Congrats you got it!"
      break
    end
    puts ""
  end
end

# runner code

a = ["words", "are", "fun", "how", "you"]

guess_game(a)