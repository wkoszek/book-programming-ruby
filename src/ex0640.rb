# Sample code from Programing Ruby, page 371
class Test
  @cls_var = 123
  def Test.inc
    @cls_var += 1
  end
end

Test.inc
Test.inc
