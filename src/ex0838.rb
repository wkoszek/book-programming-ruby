# Sample code from Programing Ruby, page 447
        File.fnmatch('cat',       'cat')
        File.fnmatch('cat',       'category')
        File.fnmatch('c{at,ub}s', 'cats')
        File.fnmatch('c{at,ub}s', 'cubs')
        File.fnmatch('c{at,ub}s', 'cat')
        File.fnmatch('c?t',       'cat')
        File.fnmatch('c\?t',      'cat')
