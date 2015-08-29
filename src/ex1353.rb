# Sample code from Programing Ruby, page 617
        count1 = 0
        count2 = 0
        a = Thread.new do
              loop { count1 += 1 }
            end
        a.priority = -1
        b = Thread.new do
              loop { count2 += 1 }
            end
        b.priority = -2
        sleep 1 #!sh!
        Thread.critical = 1
        count1
        count2
