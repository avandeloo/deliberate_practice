class Library_User
  attr_reader :first_name, :last_name, :books 
  attr_writer :first_name, :last_name 
  
  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @books  = []

  end

  def full_name
    return "#{@first_name} #{@last_name}"
  end

end
