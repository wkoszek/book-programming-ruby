# Sample code from Programing Ruby, page 368
  module SillyModule
    def hello
      "Hello."
    end
  end
  class SillyClass
    include SillyModule
  end
  s = SillyClass.new
  module SillyModule
    def hello
      "Hi, there!"
    end
  end

  s.hello
