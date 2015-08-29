# Sample code from Programing Ruby, page 578
    class Xs                # represent a string of 'x's
      include Comparable
      attr :length
      def initialize(n)
        @length = n
      end
      def succ
        Xs.new(@length + 1)
      end
      def <=>(other)
        @length <=> other.length
      end
      def to_s
        sprintf "%2d #{inspect}", @length
      end
      def inspect
        'x' * @length
      end
    end
         range = Xs.new(1)..Xs.new(10)
         range.step(2) {|x| puts x}
         range.step(3) {|x| puts x}
