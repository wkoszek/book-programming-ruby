# Sample code from Programing Ruby, page 293
VALUE name, one, two, rest; 
rb_scan_args(argc, argv, "12", &name, &one, &two);
rb_scan_args(argc, argv, "1*", &name, &rest);
