# Sample code from Programing Ruby, page 638
require 'cgi'
class String
 def inspect
   self
 end
end
      $KCODE = "u"  # Use UTF8
      CGI.unescapeHTML('&quot;a&quot;&lt;=&gt;b')
      CGI.unescapeHTML('&#65;&#x41;')
      CGI.unescapeHTML('&#x3c0;r&#178;')
