# Sample code from Programing Ruby, page 566
        Process.fork { exit 99 }
        Process.wait
        $?.exitstatus
