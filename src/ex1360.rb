# Sample code from Programing Ruby, page 619
        puts "Default group is #{ThreadGroup::Default.list}"
        tg = ThreadGroup.new
        t1 = Thread.new { sleep }
        t2 = Thread.new { sleep }
        puts "t1 is #{t1}, t2 is #{t2}"
        tg.add(t1)
        puts "Default group now #{ThreadGroup::Default.list}"
        puts "tg group now #{tg.list}"
