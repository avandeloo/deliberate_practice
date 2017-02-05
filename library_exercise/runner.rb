require "./librarian.rb"
require "./user.rb"

# runner code

librarian1 = Librarian.new( first_name: "Sue",
                            last_name: "Johnson",
                            active: true
                          )

p librarian1.first_name
p librarian1.last_name

user1 = Library_User.new( first_name: "Jane",
                          last_name: "Doe"

  )

p user1.first_name
p user1.last_name

librarian1.check_out(user1, "Moby Dick")
librarian1.check_out(user1, "The Odyssey")

p user1.books

librarian1.check_in(user1, "Moby Dick")

p user1.books