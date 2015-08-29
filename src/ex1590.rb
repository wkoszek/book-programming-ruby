# Sample code from Programing Ruby, page 744
        require 'socket'
        a = Socket.gethostbyname("161.58.146.238")
        res = Socket.gethostbyaddr(a[3], a[2])
        res.join(', ')
