# Sample code from Programing Ruby, page 337
    def meth
      "original method"
    end
    alias original meth  #!sh!
    def meth
      "new and improved"
    end
    meth
    original
