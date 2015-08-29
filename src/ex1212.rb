# Sample code from Programing Ruby, page 564
        pid = fork do
           Signal.trap("USR1") { puts "Ouch!"; exit }
           # ... do some work ...
        sleep
        end
        # ...
        Process.kill("USR1", pid)
        Process.wait
