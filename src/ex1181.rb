# Sample code from Programing Ruby, page 553
          module Other
            def three()
            end
#            def three() end
          end

          class Single
            def Single.four()
            end
#            def Single.four() end
          end

          a = Single.new 

          def a.one()
          end
#          def a.one() end

          class << a
            include Other
            def two()
            end
#            def two() end
          end

          Single.singleton_methods
          a.singleton_methods(false)
          a.singleton_methods(true)
          a.singleton_methods
