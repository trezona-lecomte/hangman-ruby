require 'spec_helper'
require 'active_support/core_ext/kernel/reporting'

describe ConsoleUI do
  let(:console) { ConsoleUI.new }
  let(:word) { Word.new('test') }

  describe "#capture_guess" do
    context "when the user has entered 'a'" do
      before do
        $stdin = StringIO.new( 'a' )
      end
      after do
        $stdin = STDIN
      end
      it "is 'a'" do
        expect( console.capture_guess ).to eq( 'a' )
      end
    end
  end

  describe "#show_obfuscated_word" do
    context "when called" do        
      before do
          word.guess_letter( "e" )
      end
      it "displays the word with nils as underscores" do
        expect( console.show_obfuscated_word( word ) ).to eq("_ e _ _ ")
      end
    end
  end
  
end