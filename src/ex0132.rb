# Sample code from Programing Ruby, page 63
def dial(digit)
end
  digits = 0..9
  digits.include?(5)
  digits.min
  digits.max
  digits.reject {|i| i < 5 }
  digits.each {|digit| dial(digit) }
