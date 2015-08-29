# Sample code from Programing Ruby, page 605
        # Create a structure named by its constant
        Customer = Struct.new(:name, :address)
        Customer.new("Dave", "123 Main")
