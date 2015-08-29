# Sample code from Programing Ruby, page 570
        fork { exit 0x37 }  #!sh!
        Process.wait        #!sh!
        sprintf('%04x', $?.to_i)
        sprintf('%04x', $? & 0x1e00)
