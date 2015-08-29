# Sample code from Programing Ruby, page 571
         fork { exit }
         Process.wait
         $?.pid
