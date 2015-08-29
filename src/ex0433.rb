# Sample code from Programing Ruby, page 227
require 'rdoc/template'

HTML = %{Hello, %name%.
<p>
The reasons you gave were:
<ul>
START:reasons
    <li>%reason_name% (%rank%)
END:reasons
</ul>
}

data = {
  'name' => 'Dave Thomas',
  'reasons' => [
    { 'reason_name' => 'flexible',    'rank' => '87' },
    { 'reason_name' => 'transparent', 'rank' => '76' },
    { 'reason_name' => 'fun',         'rank' => '94' },
  ]
}


t = TemplatePage.new(HTML)
t.write_html_on(STDOUT, data)
