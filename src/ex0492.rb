# Sample code from Programing Ruby, page 268
#if !defined(StringValue)
#  define StringValue(x) do {                         \
      if (TYPE(x) != T_STRING) x = rb_str_to_str(x);  \
    } while (0)
#end
