# Sample code from Programing Ruby, page 161
     arr = [1, 2]
     hash = { arr => "value" }
     hash[arr]
     arr[0] = 99
     hash[arr]
     hash.rehash
     hash[arr]
