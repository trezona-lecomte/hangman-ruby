require 'spec_helper'

describe Word do 
	let(:word) { Word.new( Dictionary.new.random_word ) }

	describe "#hidden_letters" do
    context "when word has just been created" do
      it "is an array" do
      	expect(word.hidden_letters).to be_a(Array)
      end
    end
  end

	describe "#obfuscated_letters" do
		context "when word has just been created" do
			it "is all nils" do
				expect(word.obfuscated_letters).to all(eq nil)
			end
		end
	end

	describe "#guess_letter" do
		context "when correct guess is made" do
			it "reveals the letter" do
        word = Word.new( "test" )
				expect(word.guess_letter('e')).to eq([nil, 'e', nil, nil])
			end
		end
	end

	describe "#guess_letter" do
		context "when incorrect guess is made" do
			it "does not reveal the letter" do
        word = Word.new( "test" )
				expect(word.guess_letter('f')).to eq([nil, nil, nil, nil])
			end
		end
	end
end