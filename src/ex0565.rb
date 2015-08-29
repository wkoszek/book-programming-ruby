# Sample code from Programing Ruby, page 317
  class Holder
    @@var = 99
    def Holder.var=(val)
      @@var = val
    end
    def var
      @@var
    end
  end

  @@var = "top level variable"

  a = Holder.new
  # This references the top-level object
  def a.get_var
    @@var
  end
  a.get_var
