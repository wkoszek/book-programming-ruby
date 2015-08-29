# Sample code from Programing Ruby, page 606
      Customer = Struct.new(:name, :address, :zip)

      joe   = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
      joejr = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
      jane  = Customer.new("Jane Doe", "456 Elm, Anytown NC", 12345)

      joe == joejr
      joe == jane
