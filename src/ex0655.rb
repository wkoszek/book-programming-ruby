# Sample code from Programing Ruby, page 378
  str1 = "hello"
  str1.freeze
  str1.frozen?
  str2 = str1.clone
  str2.frozen?
  str3 = str1.dup
  str3.frozen?
