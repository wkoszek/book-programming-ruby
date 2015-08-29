# Sample code from Programing Ruby, page 316
  OUTER_CONST = 99

  class Const
    def get_const
      CONST
    end
    CONST = OUTER_CONST + 1
  end
  Const.new.get_const
  Const::CONST
  ::OUTER_CONST
  Const::NEW_CONST = 123
