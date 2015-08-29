# Sample code from Programing Ruby, page 323
    filter = "*.c"
    files = `ls #{filter}`
    files = %x{ls #{filter}}
