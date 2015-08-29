# Sample code from Programing Ruby, page 643
# Draw the paddle of a simple game of 'pong'. It moves
# in response to the up and down keys

require 'curses'
include Curses

class Paddle
  HEIGHT = 4
  PADDLE = " \n" + "|\n"*HEIGHT + " "
  def initialize
    @top = (Curses::lines - HEIGHT)/2
    draw
  end
  def up
    @top -= 1 if @top > 1
  end
  def down
    @top += 1 if (@top + HEIGHT + 1) < lines
  end
  def draw
    setpos(@top-1, 0)
    addstr(PADDLE)
    refresh
  end
end

init_screen
begin
  crmode
  noecho
  stdscr.keypad(true)
  
  paddle = Paddle.new

  loop do
    case getch
    when ?Q, ?q    :  break
    when Key::UP   :  paddle.up
    when Key::DOWN :  paddle.down
    else beep
    end
    paddle.draw
  end
ensure
  close_screen
end
