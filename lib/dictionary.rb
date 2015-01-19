class Dictionary

	def initialize
    @words = []
    IO.foreach("spec/fixtures/words.txt") {|word| @words.push(word.chomp) }
	end
  
  def number_of_words
    @words.length
  end
  
  def random_word
    @words.sample
  end
  
end