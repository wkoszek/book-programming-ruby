# Sample code from Programing Ruby, page 602
         "abc \0\0abc \0\0".unpack('A6Z6')
         "abc \0\0".unpack('a3a3')
         "aa".unpack('b8B8')
         "aaa".unpack('h2H2c')
         "\xfe\xff\xfe\xff".unpack('sS')
         "now=20is".unpack('M*')
         "whole".unpack('xax2aX2aX1aX2a')
