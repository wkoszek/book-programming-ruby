# Sample code from Programing Ruby, page 615
        thread = Thread.new { sleep 99 }
        Thread.current.group.list
        new_group = ThreadGroup.new
        thread.group.list
        new_group.add(thread)  #!sh!
        thread.group.list
        Thread.current.group.list
