# Sample code from Programing Ruby, page 630
    class Test
      def test
        :original
      end
    end
    um = Test.instance_method(:test)
    class Test
      def test
        :modified
      end
    end
    t = Test.new
    t.test
    um.bind(t).call
