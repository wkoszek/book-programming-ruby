# Sample code from Programing Ruby, page 442
        begin
          exit(99)
        rescue SystemExit => e
          print "This program "
          if e.success?
            print "did"
          else
            print "did not"
          end
          puts " succeed"
        end
