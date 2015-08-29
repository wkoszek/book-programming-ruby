# Sample code from Programing Ruby, page 581
          # Let's see what the values are...
          Regexp::IGNORECASE
          Regexp::EXTENDED
          Regexp::MULTILINE

          /cat/.options
          /cat/ix.options
          Regexp.new('cat', true).options
          Regexp.new('cat', 0, 's').options

          r = /cat/ix
          Regexp.new(r.source, r.options)
