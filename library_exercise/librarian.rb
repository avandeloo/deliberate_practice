# model a library (librarian, users, and books) and model checking a book in and checking a book out.
require "./user.rb"

class Librarian < Library_User
  def initialize(input_options)
    super
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @active = input_options[:active]
  end 

  def check_in(user, book)
    user.books.delete(book)

  end

  def check_out(user, book)
    user.books << book
  end

end