# Sample code from Programing Ruby, page 340
  module Math
    def sin(x)
      #
    end
  end

  # Only way to access Math.sin is...
  include Math
  sin(1)
