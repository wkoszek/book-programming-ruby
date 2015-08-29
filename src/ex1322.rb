# Sample code from Programing Ruby, page 607
      Customer = Struct.new(:name, :address, :zip)
      joe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
      joe["name"]
      joe[:name]
      joe[0]
