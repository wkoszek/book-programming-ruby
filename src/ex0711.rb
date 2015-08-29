# Sample code from Programing Ruby, page 409
         a = Array.new
         a[4] = "4";                  a
         a[0] = [ 1, 2, 3 ];          a
         a[0, 3] = [ 'a', 'b', 'c' ]; a
         a[1..2] = [ 1, 2 ];          a
         a[0, 2] = "?";               a
         a[0..2] = "A";               a
         a[-1]   = "Z";               a
         a[1..-1] = nil;              a
