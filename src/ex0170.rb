# Sample code from Programing Ruby, page 73
  re = /(\d+):(\d+)/
  md1 = re.match("Time: 12:34am")
  md2 = re.match("Time: 10:30pm")
  [ $1, $2 ]   # last successful match
  $~ = md1
  [ $1, $2 ]   # previous successful match
