require 'player'

describe Player do
  subject(:player) { described_class.new("Fluffy") }

  describe "#name" do
    it "should return the player's name" do
      expect(player.name).to eq "Fluffy"
    end
  end

  describe "#hp" do
    it 'should return the HP of the player' do
      expect(player.hp).to eq Player::MAX_HP
    end
  end

  describe "#receive_attack" do
    it "should reduce player's HP upon attack" do
      allow(player).to receive(:damage).and_return 2
      player.receive_attack
      expect(player.hp).to eq Player::MAX_HP - 2
    end
  end
end
