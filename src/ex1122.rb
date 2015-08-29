# Sample code from Programing Ruby, page 530
          class SimpleSingleton  # Not thread safe
            private_class_method :new
            def SimpleSingleton.create(*args, &block)
              @me = new(*args, &block) if ! @me
              @me
            end
          end
