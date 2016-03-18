require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2)}
  let(:player_1) { double :player }
  let(:player_2) { double :player, tunage_loss: nil }

 it 'shows player 1 name' do
   expect(game.player_1).to eq player_1
 end

 it 'shows player 2 name' do
   expect(game.player_2).to eq player_2
 end

  describe '#attack' do
    it 'attacks opponent' do
      expect(game.attack(player_2))
    end
  end

  describe '#swap_turn' do
    it 'swaps to player 2 after first attack' do
      game.attack(player_2)
      expect(game.swap_turn).to eq player_2
    end
  end

  describe '#over?' do
    it 'finishes the game when one player\'s tunage reaches 0%' do
      allow(player_1).to receive(:tunage).and_return 1
      allow(player_2).to receive(:tunage).and_return 0
      expect(game).to be_over
    end
  end
end
