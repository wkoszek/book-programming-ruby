# Sample code from Programing Ruby, page 85
class Test
  def val=(val)
    @val = val
    return 99
  end
end

t = Test.new
a = t.val = 2
a
