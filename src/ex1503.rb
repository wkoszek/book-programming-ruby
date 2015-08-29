# Sample code from Programing Ruby, page 683
      require 'net/telnet'
      tn = Net::Telnet.new('Host'       => 'ntp0.cornell.edu', 'Port' => 'time',
#      tn = Net::Telnet.new('Host'       => 'time.nonexistent.org',
                           'Port'       => 'time',
                           'Timeout'    => 60,
                           'Telnetmode' => false)
      atomic_time = tn.recv(4).unpack('N')[0]
#      puts "Atomic time: " + Time.at(atomic_time - 2208988800).to_s
      puts "Atomic time: " + Time.at(atomic_time - 2208988802).to_s
      puts "Local time:  " + Time.now.to_s
    tn.close
