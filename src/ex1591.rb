# Sample code from Programing Ruby, page 744
        require 'socket'
        a = Socket.gethostbyname("63.68.129.130")
        a.join(', ')
