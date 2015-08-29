# Sample code from Programing Ruby, page 442
        begin
          exit(99)
        rescue SystemExit => e
          puts "Exit status is: #{e.status}"
        end
