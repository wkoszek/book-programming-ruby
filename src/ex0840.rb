# Sample code from Programing Ruby, page 448
        File.fnmatch('*',   '.profile')
        File.fnmatch('*',   '.profile', File::FNM_DOTMATCH)
        File.fnmatch('*',   'dave/.profile')
        File.fnmatch('*',   'dave/.profile', File::FNM_DOTMATCH)
        File.fnmatch('*',   'dave/.profile', File::FNM_PATHNAME)
        File.fnmatch('*/*', 'dave/.profile', File::FNM_PATHNAME)
        STRICT = File::FNM_PATHNAME | File::FNM_DOTMATCH
        File.fnmatch('*/*', 'dave/.profile', STRICT)
