# Sample code from Programing Ruby, page 282
  gcc -fPIC -I/usr/local/lib/ruby/1.8/i686-linux -g -O2  \
    -c main.c -o main.o
  gcc -shared -o Test.so main.o -lc 
