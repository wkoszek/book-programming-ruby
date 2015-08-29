# Sample code from Programing Ruby, page 73
  re = /(\d+):(\d+)/     # match a time hh:mm
  md = re.match("Time: 12:34am")
  md.class
  md[0]         # == $&
  md[1]         # == $1
  md[2]         # == $2
  md.pre_match  # == $`
  md.post_match # == $'
