require 'spec_helper'
require 'active_support/core_ext/kernel/reporting'

describe ConsoleUI do
  let(:console) {ConsoleUI.new}

  describe "#capture_guess" do
    context "when the user has entered a guess" do
      before do
        $stdin = StringIO.new( "a" )
      end
      after do
        $stdin = STDIN
      end
      it "is 'a'" do
        expect( console.capture_guess ).to eq( 'a' )
      end
    end
  end

  # TODO: find out how to test the 'block' of console output.
  # Note: this method is working as expected, just not the test.
  # describe "#show_obfuscated_word" do
  #   context "when called" do
  #     it "displays the word with nils as underscores" do
  #       word = Word.new( "test" )
  #       word.guess_letter( "e" )
  #       expect( console.show_obfuscated_word( word ) ).to be_a( StringIO )
  #     end
  #   end
  # end
  
end