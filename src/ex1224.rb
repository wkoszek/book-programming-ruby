# Sample code from Programing Ruby, page 570
     fork { exit 99 }
     Process.wait
     $?.class
     $?.to_i
     $? >> 8
     $?.stopped?
     $?.exited?
     $?.exitstatus
