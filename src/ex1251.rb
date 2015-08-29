# Sample code from Programing Ruby, page 583
def shutdown
   exit!
end

     pid = fork do
       Signal.trap("USR1") do
         $debug = !$debug
         puts "Debug now: #$debug"
       end
       Signal.trap("TERM") do
         puts "Terminating..."
         shutdown()
       end
       sleep(1) while true
       # . . . do some work . . .
     end

     Process.detach(pid)

     # Controlling program:
     Process.kill("USR1", pid)
 sleep 0.1     
     # ...
     Process.kill("USR1", pid)
 sleep 0.1     
     # ...
     Process.kill("TERM", pid)
