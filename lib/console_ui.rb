class ConsoleUI
  WELCOME_MESSAGE = "Welcome to hangman!\n"
  PROMPT_MESSAGE = "Please enter a letter to guess: "
  CONGRATULATE_MESSAGE = "Congratulations!!! You've won the game.\nYou managed to guess:"
  COMMISERATE_MESSAGE = "Aww no, you've hanged the man!\nThe word you were trying to guess was:"

	def initialize
	end

  def welcome
    print(WELCOME_MESSAGE)
  end

  def prompt_for_guess
    print(PROMPT_MESSAGE)
  end

  def capture_guess
    $stdin.gets.chomp
  end

  def show_obfuscated_word(word)
    @word_for_display = ''
    word.obfuscated_letters.each do |letter|
      if letter.nil?
        @word_for_display = "#{ @word_for_display }_ "
      else
        @word_for_display = "#{ @word_for_display }#{ letter } "
      end
    end
    puts "#{ @word_for_display }\n"
    @word_for_display
  end

  def show_hidden_word(word)
    word.hidden_letters.each do |letter|
      @word_for_display = "#{ @word_for_display }#{ letter } "
    end
    puts @word_for_display
    @word_for_display
  end

  def congratulate
    puts(CONGRATULATE_MESSAGE)
  end

  def commiserate
    puts(COMMISERATE_MESSAGE)
  end
end
