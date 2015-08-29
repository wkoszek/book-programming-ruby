# Sample code from Programing Ruby, page 606
      Customer = Struct.new(:name, :address, :zip)

      joe = Customer["Joe Smith", "123 Maple, Anytown NC", 12345]
      joe.name
      joe.zip
