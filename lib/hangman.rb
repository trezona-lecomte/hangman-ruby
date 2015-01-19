class Hangman
  
  attr_reader :current_pieces
  
  STARTING_NUM_OF_PIECES = 0
  MAX_NUM_OF_PIECES = 27
  
	def initialize
    @current_pieces = STARTING_NUM_OF_PIECES
	end
  
  def add_piece
    @current_pieces = current_pieces + 1
  end
  
  def hanged?
    current_pieces == MAX_NUM_OF_PIECES ? true : false
  end
  
end