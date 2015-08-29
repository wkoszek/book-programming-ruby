# Sample code from Programing Ruby, page 70
  "12:50am" =~ /(\d\d):(\d\d)(..)/
  "Hour is #$1, minute #$2"
  "12:50am" =~ /((\d\d):(\d\d))(..)/
  "Time is #$1"
  "Hour is #$2, minute #$3"
  "AM/PM is #$4"
