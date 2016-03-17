require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2)}
  let(:player_1) { double :player }
  let(:player_2) { double :player }

 it 'shows player 1 name' do
   expect(game.player_1).to eq player_1
 end

 it 'shows player 2 name' do
   expect(game.player_2).to eq player_2
 end

  describe '#attack' do
    it 'attacks opponent' do
      allow(player_2).to receive(:tunage_loss)
      expect(game.attack(player_2))
    end
  end
end
