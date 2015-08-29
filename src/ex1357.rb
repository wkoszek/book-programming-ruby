# Sample code from Programing Ruby, page 618
        a = Thread.new { raise("die now") }
        b = Thread.new { Thread.stop }
        c = Thread.new { Thread.exit }
        d = Thread.new { sleep }
      c.join
        Thread.critical = true
        d.kill
        a.status
        b.status
        c.status
        d.status
        Thread.current.status
