# Sample code from Programing Ruby, page 287
#include "ruby.h"

int main(void) {
  /* ... our own application stuff ... */
  ruby_init();
  ruby_init_loadpath();
  ruby_script("embedded");
  rb_load_file("start.rb");
  ruby_run();
  exit(0);
}
