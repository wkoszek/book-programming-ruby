# Sample code from Programing Ruby, page 755
    % export CONFIGURE_ARGS="ruby=ruby18 --enable-extras"
    % ruby -rmkmf -rpp -e 'pp $configure_args'  -- --with-cflags=-O3
    {"--topsrcdir"=>".",
     "--topdir"=>"/Users/dave/Work/rubybook/tmp",
     "--enable-extras"=>true,
     "--with-cflags"=>"-O3",
     "--ruby"=>"ruby18"}
