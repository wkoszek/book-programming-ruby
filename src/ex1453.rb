# Sample code from Programing Ruby, page 659
      require 'forwardable'

      TRICKS = [ "roll over", "play dead" ]

      dog = "rover"

      dog.extend SingleForwardable        #!sh!
      dog.def_delegator(:TRICKS, :each, :can)   #!sh!

      dog.can do |trick|
        puts trick
      end
