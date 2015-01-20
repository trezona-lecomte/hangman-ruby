require_relative 'console_ui'
require_relative 'game'

class GameController
  attr_reader :game
  attr_reader :view

  def initialize
  end

  def run_game
    @game = Game.new
    @view = ConsoleUI.new
    @view.welcome
    until game_over?
      main_game_loop
    end
  end

  def main_game_loop
    @view.show_obfuscated_word(game.word)
    @view.prompt_for_guess
    @game.guess(@view.capture_guess)
  end

  def game_over?
    if game.won?
      @view.congratulate
      true
    elsif game.lost?
      @view.commiserate
      true
    else
      false
    end
  end
end
