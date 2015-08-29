# Sample code from Programing Ruby, page 327
a = (11..20).collect {|i| (i%4 == 0)..(i%3 == 0) ? i : nil}
a

a = (11..20).collect {|i| (i%4 == 0)...(i%3 == 0) ? i : nil}
a  
