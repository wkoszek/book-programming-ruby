# Sample code from Programing Ruby, page 224
<html>
  <head><title>Test Form</title></head>
  <body>
    I like Ruby because:

    <form target="cgi-bin/survey.rb">
      <input type="checkbox" name="reason" value="flexible" /> 
         It's flexible<br />
      <input type="checkbox" name="reason" value="transparent" />
         It's transparent<br />
      <input type="checkbox" name="reason" value="perlish" />
         It's like Perl<br />
      <input type="checkbox" name="reason" value="fun" />
         It's fun

      <p>
        Your name: <input type="text" name="name">
      </p>

      <input type="submit"/>

    </form>

  </body>
</html>
