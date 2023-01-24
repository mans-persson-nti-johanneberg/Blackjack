require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super 640, 480, false
    self.caption = "Bruh"
  end

  def draw
    Gosu.draw_rect(100, 100, 50, 50, Gosu::Color::PINK)
  end
end

window = GameWindow.new
window.show

