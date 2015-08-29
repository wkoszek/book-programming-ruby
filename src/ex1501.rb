# Sample code from Programing Ruby, page 683
      require 'net/telnet'
      tn = Net::Telnet.new({})
#      tn.login "guest", "secret"
    tn.login "testuser", "wibble"
      tn.cmd "date"
      tn.close
