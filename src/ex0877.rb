# Sample code from Programing Ruby, page 456
        f1 = File.new("f1", "w")
        sleep 1 #!sh!
        f2 = File.new("f2", "w")
        f1.stat <=> f2.stat
        # Methods in Comparable are also available
        f1.stat > f2.stat
        f1.stat < f2.stat
