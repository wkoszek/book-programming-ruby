# Sample code from Programing Ruby, page 618
        a = Thread.new { Thread.stop }
        b = Thread.current
        a.stop?
        b.stop?
