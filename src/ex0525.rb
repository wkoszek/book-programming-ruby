# Sample code from Programing Ruby, page 288
WHERE=/Users/dave/ruby1.8/lib/ruby/1.8/powerpc-darwin/
CFLAGS=-I$(WHERE) -g
LDFLAGS=-L$(WHERE) -lruby -ldl -lobjc

embed:  embed.o
        $(CC) -o embed embed.o $(LDFLAGS)
