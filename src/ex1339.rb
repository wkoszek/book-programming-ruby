# Sample code from Programing Ruby, page 613
        Thread.new { sleep(200) }               #!sh!
        Thread.new { 1000000.times {|i| i*i } } #!sh!
        Thread.new { Thread.stop }              #!sh!
        Thread.list.each {|thr| p thr }
