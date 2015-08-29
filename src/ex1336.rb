# Sample code from Programing Ruby, page 612
        Thread.abort_on_exception = true
        t1 = Thread.new do
          puts  "In new thread"
          raise "Exception from thread"
        end
        sleep(1)
        puts "not reached"
