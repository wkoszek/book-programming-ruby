# Sample code from Programing Ruby, page 468
        def round
          case
          when self > 0.0 then (self+0.5).floor
          when self < 0.0 then return (self-0.5).ceil
          else 0
          end
        end
