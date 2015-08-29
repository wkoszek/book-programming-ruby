# Sample code from Programing Ruby, page 226
  require 'cgi'
  cgi = CGI.new("html3")  # add HTML generation methods
  cgi.out {
    cgi.html {
      cgi.head { "\n"+cgi.title{"This Is a Test"} } +
      cgi.body { "\n"+
        cgi.form {"\n"+
          cgi.hr +
          cgi.h1 { "A Form: " } + "\n"+
          cgi.textarea("get_text") +"\n"+
          cgi.br +
          cgi.submit
        }
      }
    }
  }
