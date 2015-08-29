# Sample code from Programing Ruby, page 283
gcc -fno-common -g -O2 -pipe -fno-common \
    -I/usr/lib/ruby/1.8/powerpc-darwin   \
    -I/usr/lib/ruby/1.8/powerpc-darwin -c main.c

cc -dynamic -bundle -undefined suppress -flat_namespace \
    -L'/usr/lib'  -o Test.bundle main.o -ldl -lobjc  
