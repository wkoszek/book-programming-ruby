# Sample code from Programing Ruby, page 638
class String
 def inspect
   self
 end
end
      require 'cgi'
      CGI.escape('c:\My Files')
      CGI.unescape('c%3a%5cMy+Files')
      CGI::escapeHTML('"a"<b & c')
