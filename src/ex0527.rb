# Sample code from Programing Ruby, page 289
#include "ruby.h"

static int id_sum;

int Values[] = { 5, 10, 15, -1, 20, 0 };

static VALUE wrap_sum(VALUE args) {
  VALUE *values = (VALUE *)args;
  VALUE  summer = values[0];
  VALUE  max    = values[1];
  return rb_funcall(summer, id_sum, 1, max);
}

static VALUE protected_sum(VALUE summer, VALUE max) {
  int error;
  VALUE args[2];
  VALUE result;

  args[0] = summer;
  args[1] = max;
  result = rb_protect(wrap_sum, (VALUE)args, &error);

  return error ? Qnil : result;
}


int main(void) {
  int value;
  int *next = Values;

  ruby_init();
  ruby_init_loadpath();
  ruby_script("embedded");
  rb_require("sum.rb");

  // get an instance of Summer
  VALUE summer = rb_class_new_instance(0, 0, 
                     rb_const_get(rb_cObject, rb_intern("Summer")));

  id_sum = rb_intern("sum");

  while (value = *next++) {
    VALUE  result = protected_sum(summer, INT2NUM(value));
    if (NIL_P(result))
      printf("Sum to %d doesn't compute!\n", value);
    else
      printf("Sum to %d is %d\n", value, NUM2INT(result));
  }

  ruby_finalize();
  exit(0);
}
