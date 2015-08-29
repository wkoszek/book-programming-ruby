# Sample code from Programing Ruby, page 622
        require 'parsedate'
        Time.local(2000,"jan",1,20,15,1)
        
        res = ParseDate.parsedate("2000-01-01 20:15:01")
        Time.local(*res)
