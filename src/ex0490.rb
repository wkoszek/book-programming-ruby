# Sample code from Programing Ruby, page 267
static VALUE iterate_over(VALUE original_str) {
  int i;
  char *p
  VALUE str = StringValue(original_str);

  p = RSTRING(str)->ptr;   // may be null

  for (i = 0; i < RSTRING(str)->len; i++, p++) {

    // process *p

  }

  return str;
}
