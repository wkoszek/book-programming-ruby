# Sample code from Programing Ruby, page 582
         r1 = /ab+c/ix
         s1 = r1.to_s
         r2 = Regexp.new(s1)
         r1 == r2
         r1.source
         r2.source
