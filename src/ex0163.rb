# Sample code from Programing Ruby, page 71
    class String
      def inspect
        '"' + to_s + '"'
      end
    end
  str = 'a\b\c'
  str.gsub(/\\/, '\\\\\\\\')
