# Sample code from Programing Ruby, page 340
  module Math
    def sin(x)
      #
    end
    module_function :sin
  end

  Math.sin(1)
  include Math
  sin(1)
