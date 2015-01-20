require 'spec_helper'

describe GameController do
  let(:controller) { GameController.new }

  describe '#intialize' do
    context 'when called' do
      it 'creates a new game' do
        expect(controller.game).to be_a(Game)
      end
      it 'creates a new view' do
        expect(controller.view).to be_a(ConsoleUI)
      end
    end
  end
  
end