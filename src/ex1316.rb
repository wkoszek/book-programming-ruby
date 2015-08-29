# Sample code from Programing Ruby, page 605
        # Create a structure with a name in Struct
        Struct.new("Customer", :name, :address)
        Struct::Customer.new("Dave", "123 Main")
