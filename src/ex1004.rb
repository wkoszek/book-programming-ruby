# Sample code from Programing Ruby, page 490
        pipe = IO.popen("-")
        if pipe
          STDERR.puts "In parent, child pid is #{pipe.pid}"
          pipe.close
        else
          STDERR.puts "In child, pid is #{$$}"
        end
