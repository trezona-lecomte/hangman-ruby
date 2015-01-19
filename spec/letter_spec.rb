require 'spec_helper'

describe Letter do 
	let(:letter) { Letter.new('a') }

	describe "#guessed?" do
		context "when the letter has not been guessed yet" do
			it "is false" do
				expect(letter.guessed?).to be false
			end
		end
		context "when the letter has been guessed correctly" do
			it "is true" do
				letter.guess('a')
				expect(letter.guessed?).to be true
			end
		end
		context "when the letter has been guessed incorrectly" do
			it "is false" do
				letter.guess('b')
				expect(letter.guessed?).to be false
			end
		end
	end
end