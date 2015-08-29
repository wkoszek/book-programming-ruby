# Sample code from Programing Ruby, page 725
      require 'timeout'

      for snooze in 1..2
        puts "About to sleep for #{snooze}"
        begin
          Timeout::timeout(1.5) do |timeout_length|
            puts "Timeout period is #{timeout_length}"
            sleep(snooze)
            puts "That was refreshing"
          end
        rescue Timeout::Error
          puts "Woken up early!!"
        end
      end
