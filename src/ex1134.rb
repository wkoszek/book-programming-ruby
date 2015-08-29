# Sample code from Programing Ruby, page 535
        def include(*modules)
          modules.reverse_each do |mod|
            mod.append_features(self)
            mod.included(self)
          end
        end
