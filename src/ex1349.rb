# Sample code from Programing Ruby, page 616
         thr = Thread.new do 
           Thread.current[:cat] = 'meow'
           Thread.current["dog"] = 'woof'
         end
         thr.join
         thr.keys
