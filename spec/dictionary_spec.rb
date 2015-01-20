require 'spec_helper'

describe Dictionary do
  let(:dictionary) { Dictionary.new }
  
  describe "#number_of_words" do
    context "when the Dictionary has just been created" do
      it "contains 21,110 words" do
        expect(dictionary.number_of_words).to be 21110
      end
    end
  end
  
  describe "#random_word" do
    context "when called" do
      it "returns a String" do
        expect(dictionary.random_word).to be_a(String)
      end
    end
  end
end
