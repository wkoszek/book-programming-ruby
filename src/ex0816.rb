# Sample code from Programing Ruby, page 439
      class Array
        def inspect
          s = self.to_a.collect{|i| i.to_s}.sort[0,7].join(', ')
          s.inspect.gsub('"', '') + ", ..."
        end
      end
    Errno.constants
