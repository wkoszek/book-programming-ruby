# Sample code from Programing Ruby, page 517
         m = /(.)(.)(\d+)(\d)/.match("THX1138: The Movie")
         m.to_a
         m.select {|v| v =~ /\d\d/ }
