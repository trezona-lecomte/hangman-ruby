class Letter

	attr_reader :guessed
	@hidden_letter

	def initialize (character)
		@guessed = false
		@hidden_letter = character
	end

	def guessed?
		return @guessed
	end

	def guess(character)
		if @hidden_letter == character 
			@guessed = true
		end
	end

end