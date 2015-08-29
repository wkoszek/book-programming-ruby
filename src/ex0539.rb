# Sample code from Programing Ruby, page 306
print <<HERE
Double quoted \
here document.
It is #{Time.now}
HERE

print <<-'THERE'
    This is single quoted.
    The above used #{Time.now}
    THERE
