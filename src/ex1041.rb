# Sample code from Programing Ruby, page 499
      def get_binding(str)
        return binding
      end
      str = "hello"
      eval "str + ' Fred'"
      eval "str + ' Fred'", get_binding("bye")
