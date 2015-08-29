# Sample code from Programing Ruby, page 18
  /\d\d:\d\d:\d\d/     # a time such as 12:34:56
  /Perl.*Python/       # Perl, zero or more other chars, then Python
  /Perl Python/        # Perl, a space, and Python
  /Perl *Python/       # Perl, zero or more spaces, and Python
  /Perl +Python/       # Perl, one or more spaces, and Python
  /Perl\s+Python/      # Perl, whitespace characters, then Python
  /Ruby (Perl|Python)/ # Ruby, a space, and either Perl or Python
