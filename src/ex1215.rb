# Sample code from Programing Ruby, page 565
        puts "I am #{Process.pid}"
        Process.fork { puts "Dad is #{Process.ppid}" }
          Process.wait
