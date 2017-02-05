#iterate through a collection of movies and determine which ones are overdue

require 'date'

def overdue_movies(movies)
  overdue = []
  movies.each do |movie|
    if movie[:due_date][-2..-1].to_i < Date.today.strftime("%m/%d/%Y")[-2..-1].to_i 
       overdue << movie
    elsif movie[:due_date][-2..-1].to_i < Date.today.strftime("%m/%d/%Y")[-2..-1].to_i && movie[:due_date][-8..-7].to_i < Date.today.strftime("%m/%d/%Y")[-8..-7]
      overdue << movie
    elsif movie[:due_date][-2..-1].to_i < Date.today.strftime("%m/%d/%Y")[-2..-1].to_i && movie[:due_date][-8..-7].to_i < Date.today.strftime("%m/%d/%Y")[-8..-7].to_i && movie[:due_date][-5..-4].to_i < Date.today.strftime("%m/%d/%Y")[-5..-4].to_i
    end

  end
  # return @overdue
  overdue.each do |x|
    puts "#{x[:title]} is overdue"
  end
end

#runner code

movies = [
  { title: "The Big Lebowski", year_released: 1998, director: "Joel Coen", due_date: "02/03/17" },
  { title: "The Shining", year_released: 1980, director: "Stanley Kubrick", due_date: "01/17/16" },
  { title: "Troll 2", year_released: 1990, director: "Claudio Fragasso", due_date: "09/07/15" }
]

overdue_movies(movies)