# Sample code from Programing Ruby, page 324
    class A
      attr_writer :value
    end
  obj = A.new
  obj.value = "hello"   # equivalent to obj.value=("hello")
