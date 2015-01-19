class Word

	attr_reader :hidden_letters
	attr_reader :obfuscated_letters

	def initialize(string)

		@hidden_letters = []
		@obfuscated_letters = []

		hide(string)
		obfuscate(string)
	end

	def guess_letter(guessed)
		@obfuscated_letters = de_obfuscate_matching(guessed)
	end

	def guessed?
		@hidden_letters == @obfuscated_letters ? true : false
	end

#------------------------------------------------------------------------------
	private

	def hide(letters)
		letters.each_char do |letter|
			@hidden_letters.push(letter)
		end
	end

	def obfuscate(letters)
		letters.each_char do |letter|
			@obfuscated_letters.push(nil)
		end
	end

	def de_obfuscate_matching(guessed)
		@hidden_letters.zip(@obfuscated_letters).map! do |hidden, obfuscated|
			hidden == guessed ? hidden : obfuscated
		end
	end

end