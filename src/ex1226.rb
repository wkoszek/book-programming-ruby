# Sample code from Programing Ruby, page 570
        fork { exit 99 }
        Process.wait
        $?.to_i
        $? >> 8
