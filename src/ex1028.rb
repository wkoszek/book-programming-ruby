# Sample code from Programing Ruby, page 496
      def do_at_exit(str1)
        at_exit { print str1 }
      end
      at_exit { puts "cruel world" }
      do_at_exit("goodbye ")
      exit
