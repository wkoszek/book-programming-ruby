# Sample code from Programing Ruby, page 330
match = for line in ARGF.readlines
            next if line =~ /^#/
            break line if line =~ /ruby/
          end
