require "./manager.rb"
require "./employee.rb"

employee1 = Employee.new(
                          first_name: "Joe",
                          last_name: "Smoker",
                          balance: 200
                        )

employee2 = Employee.new(
                          first_name: "Judy",
                          last_name: "Peele",
                          balance: 1000
                        )

manager1 = Manager.new(
                        first_name: "George",
                        last_name: "Foreman",
                        balance: 4000,
                        employees: [employee1, employee2]
                      )

p employee1.balance

p manager1.balance

p employee2.balance

manager1.give_money(employee1, 500)

p manager1.balance

p employee1.balance

manager1.collect_money(employee2, 800)

p manager1.balance

p employee2.balance