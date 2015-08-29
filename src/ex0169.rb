# Sample code from Programing Ruby, page 73
  re = /(\d+):(\d+)/     # match a time hh:mm
  md1 = re.match("Time: 12:34am")
  md2 = re.match("Time: 10:30pm")
  md1[1, 2]
  md2[1, 2]
