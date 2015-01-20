require_relative 'console_ui'
require_relative 'game'

class GameController
  attr_reader :game
  attr_reader :view

  def initialize
    @game = Game.new
    @view = ConsoleUI.new
    @view.welcome
  end

  def run_game
    until game_over? 
      main_game_loop
    end
  end

  def main_game_loop
    @view.show_obfuscated_word(game.word)
    @view.prompt_for_guess
    guessed_letter = @view.capture_guess
    if @game.valid_guess?(guessed_letter)
      @game.guess(guessed_letter)
    end
  end

  def game_over?
    if game.won
      @view.congratulate
      true
    elsif game.lost
      @view.commiserate
      true
    else
      false
    end
  end
end
