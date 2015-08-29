# Sample code from Programing Ruby, page 242
  TkLabel.new(parent_widget) do
    text    'Hello, World!'
    pack('padx'  => 5,
         'pady'  => 5,
         'side'  => 'left')
  end
  # or
  TkLabel.new(parent_widget, 'text' => 'Hello, World!').pack(...)
