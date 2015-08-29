# Sample code from Programing Ruby, page 667
  require 'ipaddr'
      class IPAddr
        alias old_ins inspect
        def inspect
         old_ins.sub(%r{/}, '/ ')
        end
      end

  v4 = IPAddr.new('192.168.23.0/24')
  v4
  v4.mask(16)
  v4.reverse
  v6 = IPAddr.new('3ffe:505:2::1')
  v6
  v6.mask(48)

  # the value for 'family' is OS dependent. This
  # value is for OS X
  v6.family
