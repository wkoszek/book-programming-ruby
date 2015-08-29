# Sample code from Programing Ruby, page 619
         thread = Thread.new { sleep 99 }
         group = ThreadGroup.new
         group.add(thread)
         group.enclose
         ThreadGroup::Default.add(thread)
