# establishes a struct Customer, and assigns it the attributes, name, address, and zip
Customer = Struct.new(:name, :address, :zip)

# creates an instance of the customer struct called joe and assigns values to this specific instances attributes mentioned before
joe   = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
joejr = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
jane  = Customer.new("Jane Doe", "456 Elm, Anytown NC", 12345)
joe == joejr   #=> true
joe == jane    #=> false

p joe