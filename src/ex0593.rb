# Sample code from Programing Ruby, page 339
  CONST = "outer"
  module Mod
    CONST = 1
    def Mod.method1    # module method
      CONST + 1
    end
  end
  module Mod::Inner
    def (Mod::Inner).method2
      CONST + " scope"
    end
  end
  Mod::CONST
  Mod.method1
  Mod::Inner::method2
