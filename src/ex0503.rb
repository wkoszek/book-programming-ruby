# Sample code from Programing Ruby, page 275
static VALUE cd_alloc(VALUE klass) {
  // same as before
}

static VALUE cd_new(int argc, VALUE *argv, VALUE klass) {
  VALUE obj = rb_funcall2(klass, 
                          rb_intern("allocate"), 0, 0);
  rb_obj_call_init(obj, argc, argv);
  return obj;
}

void init_CDPlayer() {

  // ...

#if HAVE_RB_DEFINE_ALLOC_FUNC
  // 1.8 allocation
  rb_define_alloc_func(cCDPlayer, cd_alloc); 
#else
  // define manual allocation function for 1.6
  rb_define_singleton_method(cCDPlayer, "allocate", 
                            cd_alloc, 0);
#endif
  rb_define_singleton_method(cCDPlayer, "new", cd_new, -1);

  // ...
}
