# Sample code from Programing Ruby, page 552
        class Roman
          def roman_to_int(str)
            # ...
            case str
            when "iv":    return 4
            when "xxiii": return 23
            when "mm": return 2000
            else; raise "oops #{str}"
            end
          end         
          def method_missing(method_id)
            str = method_id.id2name
            roman_to_int(str)
          end
        end
        r = Roman.new
        r.iv
        r.xxiii
        r.mm
