require 'player'

describe Player do
  subject(:slash) { described_class.new('Slash') }
  subject(:santana) { described_class.new('Santana') }

  it 'returns player name' do
   expect(slash.name).to eq 'Slash'
  end

  it 'displays default tunage' do
    expect(slash.tunage).to eq described_class::DEFAULT_TUNAGE
  end

   describe '#attack' do
     it 'attacks opponent' do
       allow(santana).to receive(:tunage_loss)
       expect(slash.attack(santana))
     end

     it 'diminishes tunage by 10%' do
       expect{slash.attack(santana)}.to change{santana.tunage}.by -Player::TUNAGE_DAMAGE
     end
   end
end
