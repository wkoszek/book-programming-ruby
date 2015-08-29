# Sample code from Programing Ruby, page 617
        count1 = count2 = 0
        a = Thread.new do
              loop { count1 += 1 }
            end
        a.priority = -1
