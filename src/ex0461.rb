# Sample code from Programing Ruby, page 245
require 'tk'

class PigBox
  def pig(word)
    leading_cap = word =~ /^[A-Z]/
    word.downcase!
    res = case word
      when /^[aeiouy]/
        word+"way"
      when /^([^aeiouy]+)(.*)/
        $2+$1+"ay"
      else
        word
    end
    leading_cap ? res.capitalize : res
  end

  def show_pig
    @text.value = @text.value.split.collect{|w| pig(w)}.join(" ")
  end

  def initialize
    ph = { 'padx' => 10, 'pady' => 10 }     # common options

    root = TkRoot.new { title "Pig" }
    top = TkFrame.new(root) { background "white" }

    TkLabel.new(top) {text 'Enter Text:' ; pack(ph) }

    @text = TkVariable.new
    TkEntry.new(top, 'textvariable' =>  @text).pack(ph)

    pig_b = TkButton.new(top) { text 'Pig It'; pack ph}
    pig_b.command { show_pig }
    exit_b = TkButton.new(top) {text 'Exit'; pack ph}
    exit_b.command { exit }
    top.pack('fill'=>'both', 'side' =>'top')
  end
end

PigBox.new
Tk.mainloop
