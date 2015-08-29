# Sample code from Programing Ruby, page 371
class Test
  @cls_var = 123
  class <<self
    attr_reader :cls_var
  end
end

Test.cls_var
