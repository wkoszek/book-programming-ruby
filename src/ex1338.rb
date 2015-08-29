# Sample code from Programing Ruby, page 613
        count = 0
        a = Thread.new { loop { count += 1 } }
        sleep(0.1)
        Thread.kill(a)
        count
        a.alive?
