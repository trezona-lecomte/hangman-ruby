require_relative 'word'
require_relative 'hangman'
require_relative 'dictionary'

class Game
  attr_accessor :word
  attr_accessor :hangman
  attr_accessor :won
  attr_accessor :lost
	
  def initialize
    @won = false
    @lost = false
    @hangman = Hangman.new
    @word = Word.new(Dictionary.new.random_word)
    @alphabet = ('a'..'z').to_a
  end

  def valid_guess?(letter)
    @alphabet.include?(letter) ? true : false
  end

  def guess(letter)
    make_guess(letter)

    unless guess_matched_in_word? 
      hangman.add_piece
    end

    if hangman.hanged?
      @lost = true
    elsif word.guessed?
      @won = true
    end
  end

  private

  def make_guess(letter)
    @alphabet.delete(letter)

    @before = @word.obfuscated_letters

    word.guess_letter(letter)

    @after = @word.obfuscated_letters
  end

  def guess_matched_in_word?
    @before == @after ? false : true
  end
end
