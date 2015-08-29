# Sample code from Programing Ruby, page 82
  class Fixnum
    alias old_plus +
    
    # Redefine addition of Fixnums. This
    # is a BAD IDEA!
    def +(other)
      old_plus(other).succ
    end
  end

  1 + 2
  a = 3
  a += 4
  a + a + a
