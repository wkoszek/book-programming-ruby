# Sample code from Programing Ruby, page 518
         m = /(.)(.)(\d+)(\d)/.match("THX1138: The Movie")
         m.to_a
         m.values_at(0, 2, -2)
