# Sample code from Programing Ruby, page 608
      Customer = Struct.new(:name, :address, :zip)
      joe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
      joe.members
