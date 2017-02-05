# model two people (employee and boss), exchanging money using classes (paycheck, expenses, etc.)

class Employee
  attr_reader :first_name, :last_name, :active, :balance
  attr_writer :balance

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @active = input_options[:active]
    @balance = input_options[:balance]

  end

end
