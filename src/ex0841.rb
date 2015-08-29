# Sample code from Programing Ruby, page 448
        File.ftype("testfile")
        File.ftype("/dev/tty")
        system("mkfifo wibble")
        File.ftype("wibble")
 system("rm wibble")
