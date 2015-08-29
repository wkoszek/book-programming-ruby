# Sample code from Programing Ruby, page 315
  OUTER_CONST = 99

  class Const
    def get_const
      CONST
    end
    CONST = OUTER_CONST + 1
  end
