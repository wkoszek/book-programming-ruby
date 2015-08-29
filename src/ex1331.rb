# Sample code from Programing Ruby, page 610
    module One
      class Fred
      end
      $f1 = :Fred
    end
    module Two
      Fred = 1
      $f2 = :Fred
    end
    def Fred()
    end
    $f3 = :Fred
    $f1.id
    $f2.id
    $f3.id
