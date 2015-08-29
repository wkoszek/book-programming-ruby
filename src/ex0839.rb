# Sample code from Programing Ruby, page 447
        File.fnmatch('c??t',   'cat')
        File.fnmatch('c*',     'cats')
        File.fnmatch('c/**/t', 'c/a/b/c/t')
        File.fnmatch('c*t',    'cat')
        File.fnmatch('c\at',   'cat')
        File.fnmatch('c\at',   'cat', File::FNM_NOESCAPE)
        File.fnmatch('a?b',    'a/b')
        File.fnmatch('a?b',    'a/b', File::FNM_PATHNAME)
