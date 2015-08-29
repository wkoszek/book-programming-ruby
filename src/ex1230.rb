# Sample code from Programing Ruby, page 572
        fork { exit 0xab }
        Process.wait
        sprintf('%04x', $?.to_i)
