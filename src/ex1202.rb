# Sample code from Programing Ruby, page 562
         pid = fork { sleep 0.1 }
         Process.detach(pid)
         sleep 1
         system("ps -o pid,state -p #{pid}")
