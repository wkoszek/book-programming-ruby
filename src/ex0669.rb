# Sample code from Programing Ruby, page 388
  typedef struct {
    char *name;
    void (*fptr)();
  } Tuple;

  Tuple list[]= {
    { "play",   fptr_play },
    { "stop",   fptr_stop },
    { "record", fptr_record },
    { 0, 0 },
  };

  ...

  void dispatch(char *cmd) {
    int i = 0;
    for (; list[i].name; i++) {
      if (strncmp(list[i].name,cmd,strlen(cmd)) == 0) {
        list[i].fptr();
        return;
      }
    }
    /* not found */
  }
