# Sample code from Programing Ruby, page 566
        fork { sleep 0.2; exit 2 }
        fork { sleep 0.1; exit 1 }
        fork {            exit 0 }
        Process.waitall
