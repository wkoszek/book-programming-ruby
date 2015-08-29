# Sample code from Programing Ruby, page 683
      require 'net/telnet'
#      tn = Net::Telnet.new({})     {|str| print str }
      tn = Net::Telnet.new({})     {|str| print str.gsub(/\n\s*\n/, "\n").gsub(/^Trying.*\n/, "") }
#      tn.login("guest", "secret")  {|str| print str }
    tn.login("testuser", "wibble")  {|str| print str.gsub(/testuser/, 'guest').gsub(/\n\s*\n/, "\n").gsub(/\A[\s\n]+/, "") }
      tn.cmd("date")               {|str| print str }
      tn.close
