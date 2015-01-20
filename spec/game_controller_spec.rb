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

  describe '#game_over?' do
    context 'when the game is won' do
      before do
        allow(controller.game).to receive(:won).and_return true
      end
      it 'displays a congratulatory message' do
        expect(controller.view).to receive(:congratulate)
        controller.game_over?
      end
    end
    context 'when the game is lost' do
      before do
        allow(controller.game).to receive(:lost).and_return true
      end
      it 'displays a commiseratory message' do
        expect(controller.view).to receive(:commiserate)
        controller.game_over?
      end
    end
  end
end
