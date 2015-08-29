# Sample code from Programing Ruby, page 615
        thr = Thread.new { }
        thr.join
        Thread.current.alive?
        thr.alive?
