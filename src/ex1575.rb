# Sample code from Programing Ruby, page 732
      require 'weakref'
      
      ref = "fol de rol"
      puts "Initial object is #{ref}"
      ref = WeakRef.new(ref)
      puts "Weak reference is #{ref}"
      ObjectSpace.garbage_collect
      puts "But then it is #{ref}"
