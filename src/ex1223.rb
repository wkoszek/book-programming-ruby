# Sample code from Programing Ruby, page 567
        include Process
        pid = fork { sleep 3 }
        Time.now
        waitpid(pid, Process::WNOHANG)
        Time.now
        waitpid(pid, 0)
        Time.now
