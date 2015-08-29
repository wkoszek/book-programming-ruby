# Sample code from Programing Ruby, page 485
        pipe = IO.popen("uname")
        p(pipe.readlines)
        puts "Parent is #{Process.pid}"
        IO.popen("date") {|pipe| puts pipe.gets }
        IO.popen("-") {|pipe| STDERR.puts "#{Process.pid} is here, pipe=#{pipe}" }
 sleep(0.1)        
