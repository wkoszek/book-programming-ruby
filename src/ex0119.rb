# Sample code from Programing Ruby, page 58
    class String
      def inspect
        to_s
      end
    end
   %q/general single-quoted string/
   %Q!general double-quoted string!
   %Q{Seconds/day: #{24*60*60}}
