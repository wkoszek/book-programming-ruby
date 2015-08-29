# Sample code from Programing Ruby, page 391
  module Kernel
    alias_method :old_system, :system
    def system(*args)
      result = old_system(*args)
      puts "system(#{args.join(', ')}) returned #{result}"
      result
    end
  end
  
  system("date")
  system("kangaroo", "-hop 10", "skippy")
