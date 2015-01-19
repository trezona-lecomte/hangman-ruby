require 'spec_helper'

describe GameController do 
  let(:controller) { GameController.new }

  describe "#initialize" do
    context "when the controller has been created" do
      it "hasn't got a game yet" do
        expect(controller.game).to eq( nil )
      end
    end
  end
  
end