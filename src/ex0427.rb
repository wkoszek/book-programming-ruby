# Sample code from Programing Ruby, page 223
  require 'cgi'
  puts CGI.unescapeHTML("a &lt; 100 &amp;&amp; b &gt; 200")
