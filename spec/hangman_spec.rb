require 'spec_helper'

describe Hangman do
  let(:hangman) { Hangman.new }
  
  describe "#current_pieces" do
    context "when the hangman has just been created" do
      it "is 0" do
        expect(hangman.current_pieces).to be Hangman::STARTING_NUM_OF_PIECES
      end
    end
  end
  
  describe "#hanged?" do
    context "when the hangman is hanged" do
      before do
        allow(hangman).to receive(:current_pieces).and_return Hangman::MAX_NUM_OF_PIECES
      end
      it "is true" do
        expect(hangman.hanged?).to be true
      end
    end
    context "when the hangman is not yet hanged" do
      before do
        allow(hangman).to receive(:current_pieces).and_return Hangman::MAX_NUM_OF_PIECES - 1
      end
      it "is false" do
        expect(hangman.hanged?).to be false
      end
    end
  end
  
  describe "#add_piece" do
    context "when called" do
      it "adds 1 to current_pieces" do
        expect(hangman.add_piece).to be Hangman::STARTING_NUM_OF_PIECES + 1
      end
    end
  end
  
end

# The describe method creates an instance of Behaviour
# The it method returns an instance of Example
