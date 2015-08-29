# Sample code from Programing Ruby, page 542
        class String
          def coerce(other)
            case other
            when Integer
              begin
                return other, Integer(self)
              rescue
                return Float(other), Float(self)
              end
            when Float
              return other, Float(self)
            else super
            end
          end
        end
