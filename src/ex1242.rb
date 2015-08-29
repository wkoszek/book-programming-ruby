# Sample code from Programing Ruby, page 580
      a = "HELLO"
      case a
      when /^[a-z]*$/; print "Lower case\n"
      when /^[A-Z]*$/; print "Upper case\n"
      else             print "Mixed case\n"
      end
