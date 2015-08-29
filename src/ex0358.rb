# Sample code from Programing Ruby, page 161
   while line = gets
     num1, num2 = line.split(/,/).map {|val| Integer(val) }
     # ...
   end
