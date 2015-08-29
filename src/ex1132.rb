# Sample code from Programing Ruby, page 535
        module Picky
          def Picky.extend_object(o)
            if String === o
              puts "Can't add Picky to a String"
            else
              puts "Picky added to #{o.class}"
              super
            end
          end
        end
        (s = Array.new).extend Picky  # Call Object.extend
        (s = "quick brown fox").extend Picky
