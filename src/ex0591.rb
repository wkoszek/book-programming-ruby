# Sample code from Programing Ruby, page 338
CONST = "outer"

module A
  CONST = "inner"   # This is A::CONST
end

module A
  class B
    def B.get_const
      CONST
    end
  end
end
class A::C
  def (A::C).get_const
    CONST
  end
end

A::C.get_const
