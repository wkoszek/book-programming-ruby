# Sample code from Programing Ruby, page 36
  class MyClass

    def method1
    end

    # ... and so on
      def method2() end
      def method3() end
      def method4() end

    public    :method1, :method4
    protected :method2
    private   :method3
  end
