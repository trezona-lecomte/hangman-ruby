class ConsoleUI
  WELCOME_MESSAGE = 'Welcome to hangman!'
  PROMPT_MESSAGE = 'Please enter a letter to guess:'
  CONGRATULATE_MESSAGE = "Congratulations!!! You've won the game."
  COMMISERATE_MESSAGE = "Aww no, you've hanged the man!"

	def initialize
    @word_for_display = ''
	end

  def welcome
    print( WELCOME_MESSAGE )
  end

  def prompt_for_guess
    print( PROMPT_MESSAGE )
  end

  def capture_guess
    $stdin.gets.chomp
  end

  def show_obfuscated_word(word)
    word.obfuscated_letters.each do |letter|
      if letter.nil?
        @word_for_display = "#{@word_for_display}_ "
      else
        @word_for_display = "#{@word_for_display}#{letter} "
      end
    end
    print "#{@word_for_display}\n"
    @word_for_display
  end

  def congratulate
    print( CONGRATULATE_MESSAGE )
  end

  def commiserate
    print( COMMISERATE_MESSAGE )
  end

end