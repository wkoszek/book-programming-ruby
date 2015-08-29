# Sample code from Programing Ruby, page 571
        pid = fork { sleep 100 }
        Process.kill(9, pid)
        Process.wait
        $?.signaled?
