# Sample code from Programing Ruby, page 614
         a = Thread.new { Thread.current["name"] = "A"; Thread.stop }
         b = Thread.new { Thread.current[:name]  = "B"; Thread.stop }
         c = Thread.new { Thread.current["name"] = "C"; Thread.stop }
         Thread.list.each {|x| puts "#{x.inspect}: #{x[:name]}" }
