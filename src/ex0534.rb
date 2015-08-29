# Sample code from Programing Ruby, page 304
123456                   => 123456   # Fixnum
0d123456                 => 123456   # Fixnum
123_456                  => 123456   # Fixnum - underscore ignored
-543                     => -543     # Fixnum - negative number
0xaabb                   => 43707    # Fixnum - hexadecimal
0377                     => 255      # Fixnum - octal
-0b10_1010               => -42      # Fixnum - binary (negated)
123_456_789_123_456_789  => 123456789123456789 # Bignum
