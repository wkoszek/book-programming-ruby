# Sample code from Programing Ruby, page 571
        fork { }
        Process.wait
        $?.exited?
        $?.exitstatus

        fork { exit 99 }
        Process.wait
        $?.exited?
        $?.exitstatus

