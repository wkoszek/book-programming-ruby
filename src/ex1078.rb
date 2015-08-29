# Sample code from Programing Ruby, page 516
         m = /(.)(.)(\d+)(\d)/.match("THX1138.")
         m[0]
         m[1, 2]
         m[1..3]
         m[-3, 2]
