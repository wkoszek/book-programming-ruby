# Sample code from Programing Ruby, page 590
        # standard salt
        "secret".crypt("sh")
        # On OSX: DES, 2 interactions, 24-bit salt
        "secret".crypt("_...0abcd")
