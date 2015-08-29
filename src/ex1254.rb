# Sample code from Programing Ruby, page 585
        str1 = "wibble"
        str2 = String.new(str1)
        str1.object_id
        str2.object_id
        str1[1] = "o"
        str1
        str2
