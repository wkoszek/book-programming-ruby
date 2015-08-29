# Sample code from Programing Ruby, page 123
# read into string
str = IO.read("testfile")
str.length
str[0, 30]

# read into an array
arr = IO.readlines("testfile")
arr.length
arr[0]
