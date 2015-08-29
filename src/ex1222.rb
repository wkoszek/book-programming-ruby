# Sample code from Programing Ruby, page 567
        Process.fork { exit 99 }
        pid, status = Process.wait2
        pid
        status.exitstatus
