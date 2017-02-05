require "./employee.rb"

class Manager < Employee
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def give_money(employee, amount)
    @balance -= amount
    employee.balance += amount
  end

  def collect_money(employee, amount)
    employee.balance -= amount
    @balance += amount
  end

end 

