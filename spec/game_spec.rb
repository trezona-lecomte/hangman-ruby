require 'spec_helper'

describe Game do
  let(:game) { Game.new }

  describe "#word" do
    context "when the game has just started" do
      it "has a word" do
        expect(game.word).to be_a(Word)
      end
      it "has a hangman" do
        expect(game.hangman).to be_a(Hangman)
      end
    end
  end

  describe "#valid_guess?" do
    context "when the guess is invalid" do
      it "is false" do
        expect( game.valid_guess?( "$" ) ).to be false
      end
    end
    context "when the guess is valid" do
      it "is true" do
        expect( game.valid_guess?( "a" ) ).to be true
      end
    end
    context "when the guess has been made already" do
      it "is false" do
        game.guess( "a" )
        expect( game.valid_guess?( "a" ) ).to be false
      end
    end
  end

  describe "#guess" do
    context "when the guess is not matched" do
      before do
        allow( game ).to receive( :guess_matched_in_word? ).and_return false
        game.guess( "a" )
      end
      it "adds a piece to the hangman" do
        expect( game.hangman.current_pieces ).to eq( Hangman::STARTING_NUM_OF_PIECES + 1 )
      end
    end
    context "when the guess is matched" do
      before do
        allow( game ).to receive( :guess_matched_in_word? ).and_return true
        game.guess( "a" )
      end
      it "doesn't add a piece to the hangman" do
        expect( game.hangman.current_pieces ).to eq( Hangman::STARTING_NUM_OF_PIECES )
      end
    end
  end

  describe "#won" do
    context "when the game has just started" do
      it "is false" do
        expect(game.won).to be false
      end
    end
  end

  describe "#lost" do
    context "when the game has just started" do
      it "is false" do
        expect(game.lost).to be false
      end
    end
  end

end