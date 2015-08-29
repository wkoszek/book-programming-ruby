# Sample code from Programing Ruby, page 609
        def eat_cpu
          100_000.times { Math.sin(0.321) } 
        end
        3.times { fork { eat_cpu } }  #!sh!
        eat_cpu   #!sh!
        Process.waitall   #!sh!
        t = Process::times
        [ t.utime, t.stime]
        [ t.cutime, t.cstime ]
