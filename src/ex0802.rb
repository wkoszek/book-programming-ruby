# Sample code from Programing Ruby, page 435
         a = %w(albatross dog horse)
         a.min
         a.min {|a,b| a.length <=> b.length }
